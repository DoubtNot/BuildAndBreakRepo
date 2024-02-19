using UnityEngine;

public class Spawner : MonoBehaviour
{
    public GameObject prefabToSpawn; // Reference to the prefab you want to spawn
    public float numberOfPrefabs = 10; // The number of prefabs to spawn
    public Transform spawnPoint; // The spawn point for the prefabs


    public void SpawnPrefabs()
    {
        for (int i = 0; i < numberOfPrefabs; i++)
        {
            Instantiate(prefabToSpawn, spawnPoint.position, Quaternion.identity);
            // You can adjust the spawn rotation as needed.
        }
    }
}
