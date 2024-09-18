using UnityEngine;

public class BrickDestroyer : MonoBehaviour
{
    // Function to destroy all objects with the tag "Brick"
    public void DestroyAllBricks()
    {
        // Find all objects with the tag "Brick"
        GameObject[] bricks = GameObject.FindGameObjectsWithTag("Brick");

        // Loop through the array and destroy each object and its parent if necessary
        foreach (GameObject brick in bricks)
        {
            Destroy(brick.transform.root.gameObject);
        }
    }

    // OnCollisionEnter is called when this object collides with another
    private void OnCollisionEnter(Collision collision)
    {
        DestroySingleBrick(collision.gameObject);
    }

    // Function to destroy the root (most parent) object of a collided brick
    private void DestroySingleBrick(GameObject brick)
    {
        // Check if the collided object has the tag "Brick"
        if (brick.CompareTag("Brick"))
        {
            // Get the root object of the brick
            GameObject rootObject = brick.transform.root.gameObject;

            // Ensure the root object is the intended parent
            if (rootObject.CompareTag("Brick"))
            {
                // Destroy the root (most parent) object
                Destroy(rootObject);
                Debug.Log("Parent object of the brick destroyed.");
            }
            else
            {
                Debug.LogWarning("The root object is not tagged as Brick.");
            }
        }
        else
        {
            Debug.LogWarning("The collided object is not tagged as Brick.");
        }
    }
}
