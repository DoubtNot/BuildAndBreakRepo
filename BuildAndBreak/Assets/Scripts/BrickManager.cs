using UnityEngine;
using System.Collections.Generic;
using System.IO;

[System.Serializable]
public class BrickData
{
    public float posX;
    public float posY;
    public float posZ;
    public float rotX;
    public float rotY;
    public float rotZ;
    public float rotW;
    public string brickType;
    public string materialName;

    public BrickData(Vector3 position, Quaternion rotation, string type, string matName)
    {
        posX = position.x;
        posY = position.y;
        posZ = position.z;
        rotX = rotation.x;
        rotY = rotation.y;
        rotZ = rotation.z;
        rotW = rotation.w;
        brickType = type;
        materialName = matName;
    }
}

[System.Serializable]
public class BrickSaveData
{
    public List<BrickData> bricks = new List<BrickData>();
}

public class BrickManager : MonoBehaviour
{
    public GameObject[] brickPrefabs;
    private const string SaveFilePath = "BrickSaveData.json";
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
                Quaternion rotation = brick.transform.rotation;
                string type = brick.name.Replace("(Clone)", "").Trim();

                Transform childBrick = brick.transform.Find("Brick");
                string materialName = childBrick != null ? GetMaterialName(childBrick) : "";

                saveData.bricks.Add(new BrickData(position, rotation, type, materialName));
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
                    Quaternion rotation = new Quaternion(brickData.rotX, brickData.rotY, brickData.rotZ, brickData.rotW);
                    GameObject newBrick = Instantiate(brickPrefab, new Vector3(brickData.posX, brickData.posY, brickData.posZ), rotation);
                    newBrick.tag = "Brick";

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
        Renderer renderer = childBrick.GetComponent<Renderer>();
        if (renderer != null && renderer.material != null)
        {
            return CleanMaterialName(renderer.material.name);
        }
        return "";
    }

    private string CleanMaterialName(string materialName)
    {
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
        Material material = Resources.Load<Material>(materialName);
        if (material != null)
        {
            Renderer renderer = childBrick.GetComponent<Renderer>();
            if (renderer != null)
            {
                renderer.material = material;
            }
        }
        else
        {
            Debug.LogWarning("Material not found: " + materialName);
        }
    }

    private GameObject GetBrickPrefabByType(string type)
    {
        foreach (GameObject prefab in brickPrefabs)
        {
            if (prefab.name == type)
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
