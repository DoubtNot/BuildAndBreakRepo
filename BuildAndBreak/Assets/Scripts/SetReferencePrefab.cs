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
    public PrefabCombination[] brickFullHeight;
    public PrefabCombination[] brickHalfHeight;
    public PrefabCombination[] brickFlatHalf;
    public PrefabCombination[] brickFullHeightHoloPegs;
    public PrefabCombination[] brickHalfHeightHoloPegs;
    public PrefabCombination[] brickSpecialParts;

    // Current group index
    private int currentGroupIndex = 0;

    private void Start()
    {
        // Initialize values to 1, the same as before
        upDownValueData.Value = 1;
        leftRightValueData.Value = 1;
        SetPrefab();
    }

    // Sets the prefab based on UpDownValue and LeftRightValue
    public GameObject SetPrefab()
    {
        // Get the values from the ScriptableObjects
        int upDownValue = upDownValueData.Value;
        int leftRightValue = leftRightValueData.Value;

        PrefabCombination[] prefabCombinations = GetCurrentPrefabCombinations();

        // Find the prefab combination in the array based on upDownValue and leftRightValue
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
        // Only reset values when switching to index 5 (brickSpecialParts), not during prefab selection
        if (currentGroupIndex == 5 && upDownValueData.Value == 1 && leftRightValueData.Value == 1)
        {
            upDownValueData.Value = 1;
            leftRightValueData.Value = 1;
        }

        switch (currentGroupIndex)
        {
            case 0:
                return brickFullHeight;
            case 1:
                return brickHalfHeight;
            case 2:
                return brickFlatHalf;
            case 3:
                return brickFullHeightHoloPegs;
            case 4:
                return brickHalfHeightHoloPegs;
            case 5:
                return brickSpecialParts;
            default:
                return null;
        }
    }


    // Method to cycle through different groups of prefabs
    public void CyclePrefabGroups()
    {
        currentGroupIndex = (currentGroupIndex + 1) % 6; // Cycling through six groups

        // Ensure the values are reset when switching to index 5
        if (currentGroupIndex == 5)
        {
            upDownValueData.Value = 1;
            leftRightValueData.Value = 1;
        }

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

    // Method to force the prefab to update when values change externally
    public void UpdateReferenceMesh()
    {
        SetPrefab();  // This will re-check the prefab based on the current values
    }
}
