using UnityEngine;

public class MultipleOffKinematic : MonoBehaviour
{
    private void OnCollisionEnter(Collision collision)
    {
        // Check if the collided object has the tag "BrickColliders"
        if (collision.gameObject.CompareTag("Brick"))
        {
            // Find all game objects with the tag "Brick"
            GameObject[] bricks = GameObject.FindGameObjectsWithTag("Brick");

            // Iterate through each brick and apply the changes
            foreach (GameObject brick in bricks)
            {
                // Get the rigidbody from the brick
                Rigidbody brickRigidbody = brick.GetComponent<Rigidbody>();

                // Check if the rigidbody is not null before modifying isKinematic
                if (brickRigidbody != null)
                {
                    brickRigidbody.isKinematic = false;
                }
            }
        }
    }
}
