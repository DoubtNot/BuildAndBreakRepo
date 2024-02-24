using UnityEngine;

[System.Serializable]
public class PrefabCombination
{
    public int upDownValue;
    public int leftRightValue;
    public GameObject prefab;
}

public class SetReferencePrefab : MonoBehaviour
{
    public IntData upDownValueData;
    public IntData leftRightValueData;

    public Transform spawnPoint;
    public GameObject referenceObject;

    // Define a list of prefab combinations
    public PrefabCombination[] prefabCombinations;

    private void Start()
    {
        upDownValueData.Value = 1;
        leftRightValueData.Value = 1;
        SetPrefab();
    }

    // You can use this method to set the prefab based on UpDownValue and LeftRightValue
    public GameObject SetPrefab()
    {
        // Get the values from the ScriptableObjects
        int upDownValue = upDownValueData.Value;
        int leftRightValue = leftRightValueData.Value;

        // Find the prefab combination in the array
        PrefabCombination selectedCombination = System.Array.Find(prefabCombinations,
            combination => combination.upDownValue == upDownValue && combination.leftRightValue == leftRightValue);

        if (selectedCombination != null && selectedCombination.prefab != null)
        {
            // Change the mesh of the reference object to match the selected prefab's mesh
            MeshFilter referenceMeshFilter = referenceObject.GetComponent<MeshFilter>();
            MeshFilter selectedPrefabMeshFilter = selectedCombination.prefab.GetComponentInChildren<MeshFilter>();

            if (referenceMeshFilter != null && selectedPrefabMeshFilter != null)
            {
                referenceMeshFilter.mesh = selectedPrefabMeshFilter.sharedMesh;
            }

            return selectedCombination.prefab;
        }

        return null;
    }


    public void SpawnObject()
    {
        // Get the selected prefab from SetPrefab method
        GameObject selectedPrefab = SetPrefab();

        if (spawnPoint != null && selectedPrefab != null)
        {
            // Instantiate the selected prefab at the specified spawn point
            GameObject spawnedObject = Instantiate(selectedPrefab, spawnPoint.position, spawnPoint.rotation);

            // Get the material from the reference object
            Material referenceMaterial = referenceObject.GetComponent<Renderer>().material;

            // Apply the material to the spawned object
            Renderer[] childRenderers = spawnedObject.GetComponentsInChildren<Renderer>();

            if (childRenderers != null && childRenderers.Length > 0)
            {
                foreach (Renderer childRenderer in childRenderers)
                {
                    childRenderer.material = referenceMaterial;
                }
            }
        }
    }

    public void UpdateReferenceMesh()
    {
        SetPrefab();
    }
}
