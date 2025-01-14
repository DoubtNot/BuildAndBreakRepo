using UnityEngine;

public class DestroyObject : MonoBehaviour
{
    // Function to destroy the game object this script is attached to
    public void DestroyMe()
    {
        Destroy(gameObject);
    }
}
