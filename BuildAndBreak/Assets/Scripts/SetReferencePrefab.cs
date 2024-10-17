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

    // Define arrays of prefab combinations for each group
    public PrefabCombination[] prefabCombinationsGroup1;
    public PrefabCombination[] prefabCombinationsGroup2;
    public PrefabCombination[] prefabCombinationsGroup3;
    public PrefabCombination[] prefabCombinationsGroup4;

    // Current group index
    private int currentGroupIndex = 0;

    private void Start()
    {
        upDownValueData.Value = 1;
        leftRightValueData.Value = 1;
        SetPrefab();
    }

    // You can use this method to set the prefab based on UpDownValue and LeftRightValue
    public GameObject SetPrefab()
    {
        // If we're in group 4 (index 3), set both upDownValue and leftRightValue to 1
        if (currentGroupIndex == 3)
        {
            upDownValueData.Value = 1;
            leftRightValueData.Value = 1;
        }

        // Get the values from the ScriptableObjects
        int upDownValue = upDownValueData.Value;
        int leftRightValue = leftRightValueData.Value;

        PrefabCombination[] prefabCombinations = GetCurrentPrefabCombinations();

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

    // Method to get the current set of prefab combinations based on the current group index
    private PrefabCombination[] GetCurrentPrefabCombinations()
    {
        switch (currentGroupIndex)
        {
            case 0:
                return prefabCombinationsGroup1;
            case 1:
                return prefabCombinationsGroup2;
            case 2:
                return prefabCombinationsGroup3;
            case 3:
                return prefabCombinationsGroup4;
            default:
                return null;
        }
    }

    // Method to cycle through different groups of prefabs
    public void CyclePrefabGroups()
    {
        currentGroupIndex = (currentGroupIndex + 1) % 4; // Cycling through four groups
        // Update the reference mesh when cycling through prefab groups
        UpdateReferenceMesh();
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
