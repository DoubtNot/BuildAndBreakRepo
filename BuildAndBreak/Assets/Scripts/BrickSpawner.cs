using UnityEngine;

public class BrickSpawner : MonoBehaviour
{
    public Transform spawnPoint; // Drag and drop the spawn point in the Inspector
    public GameObject prefabToSpawn; // Drag and drop the prefab in the Inspector
    public GameObject referenceObject; // Drag and drop the reference object in the Inspector


    void SpawnObject()
    {
        if (spawnPoint != null && prefabToSpawn != null && referenceObject != null)
        {
            // Instantiate the prefab at the specified spawn point
            GameObject spawnedObject = Instantiate(prefabToSpawn, spawnPoint.position, spawnPoint.rotation);

            // Get the material from the reference object
            Material referenceMaterial = referenceObject.GetComponentInChildren<Renderer>().material;

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
}
