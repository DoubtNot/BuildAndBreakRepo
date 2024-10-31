using UnityEngine;
using System.Collections.Generic;
using System.IO;

[System.Serializable]
public class BrickData
{
    public float posX;
    public float posY;
    public float posZ;
    public string brickType; // Property for brick type
    public string materialName; // Property for the material name

    public BrickData(Vector3 position, string type, string matName)
    {
        posX = position.x;
        posY = position.y;
        posZ = position.z;
        brickType = type; // Assign type
        materialName = matName; // Assign material name
    }
}

[System.Serializable]
public class BrickSaveData
{
    public List<BrickData> bricks = new List<BrickData>();
}

public class BrickManager : MonoBehaviour
{
    public GameObject[] brickPrefabs; // Array to hold different types of brick prefabs
    private const string SaveFilePath = "BrickSaveData.json";

    // List of suffixes to remove
    private static readonly string[] suffixesToRemove = { "(Clone)", "(Instance)", " (Instance)" };

    private void Start()
    {
        LoadBrickPositions();
    }

    public void QuitApplication()
    {
        SaveBrickPositions();
        Application.Quit();
    }

    private void SaveBrickPositions()
    {
        BrickSaveData saveData = new BrickSaveData();
        GameObject[] allBricks = GameObject.FindGameObjectsWithTag("Brick");

        foreach (GameObject brick in allBricks)
        {
            if (IsMostParent(brick))
            {
                Vector3 position = brick.transform.position;
                string type = brick.name.Replace("(Clone)", "").Trim(); // Remove "(Clone)" and trim spaces

                // Find the child object named "Brick"
                Transform childBrick = brick.transform.Find("Brick");
                string materialName = childBrick != null ? GetMaterialName(childBrick) : ""; // Get the currently applied material name

                saveData.bricks.Add(new BrickData(position, type, materialName));
            }
        }

        string json = JsonUtility.ToJson(saveData, true);
        File.WriteAllText(Path.Combine(Application.persistentDataPath, SaveFilePath), json);
        Debug.Log("Bricks saved to JSON: " + json);
    }

    private void LoadBrickPositions()
    {
        string filePath = Path.Combine(Application.persistentDataPath, SaveFilePath);

        if (File.Exists(filePath))
        {
            string json = File.ReadAllText(filePath);
            BrickSaveData loadedData = JsonUtility.FromJson<BrickSaveData>(json);

            foreach (BrickData brickData in loadedData.bricks)
            {
                GameObject brickPrefab = GetBrickPrefabByType(brickData.brickType);
                if (brickPrefab != null)
                {
                    GameObject newBrick = Instantiate(brickPrefab, new Vector3(brickData.posX, brickData.posY, brickData.posZ), Quaternion.identity);
                    newBrick.tag = "Brick"; // Ensure the instantiated brick has the correct tag

                    // Set the material of the child named "Brick"
                    Transform childBrick = newBrick.transform.Find("Brick");
                    if (childBrick != null && !string.IsNullOrEmpty(brickData.materialName))
                    {
                        SetMaterial(childBrick, brickData.materialName);
                    }
                }
            }

            Debug.Log("Bricks loaded from JSON: " + json);
        }
        else
        {
            Debug.LogWarning("Save file not found at " + filePath);
        }
    }

    private string GetMaterialName(Transform childBrick)
    {
        // Get the material name from the Renderer component
        Renderer renderer = childBrick.GetComponent<Renderer>();
        if (renderer != null && renderer.material != null)
        {
            // Return the name of the material without any unwanted suffixes
            return CleanMaterialName(renderer.material.name);
        }
        return "";
    }

    private string CleanMaterialName(string materialName)
    {
        // Remove defined suffixes
        foreach (string suffix in suffixesToRemove)
        {
            if (materialName.EndsWith(suffix))
            {
                materialName = materialName.Substring(0, materialName.Length - suffix.Length).Trim();
            }
        }
        return materialName;
    }

    private void SetMaterial(Transform childBrick, string materialName)
    {
        // Find the material by name and apply it
        Material material = Resources.Load<Material>(materialName);
        if (material != null)
        {
            Renderer renderer = childBrick.GetComponent<Renderer>();
            if (renderer != null)
            {
                renderer.material = material; // Set the material on the child object
            }
        }
        else
        {
            Debug.LogWarning("Material not found: " + materialName);
        }
    }

    private GameObject GetBrickPrefabByType(string type)
    {
        // Search for the appropriate prefab based on the type
        foreach (GameObject prefab in brickPrefabs)
        {
            if (prefab.name == type) // Match prefab name to the type identifier
            {
                return prefab;
            }
        }
        Debug.LogWarning("No prefab found for type: " + type);
        return null;
    }

    private bool IsMostParent(GameObject brick)
    {
        return brick.transform.parent == null || brick.transform.parent.tag != "Brick";
    }
}
