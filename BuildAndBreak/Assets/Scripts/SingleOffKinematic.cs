using UnityEngine;

public class SingleOffKinematic : MonoBehaviour
{
    [SerializeField] private string targetTag = "Wood"; // Configurable tag

    private void OnCollisionEnter(Collision collision)
    {
        // Check if the collided object has the specified tag or if no tag is specified
        if (string.IsNullOrEmpty(targetTag) || collision.gameObject.CompareTag(targetTag))
        {
            // Get the grandparent transform
            Transform grandparentTransform = collision.gameObject.transform;

            // Check if the grandparent has a Rigidbody component
            Rigidbody brickRigidbody = grandparentTransform.GetComponent<Rigidbody>();

            if (brickRigidbody != null)
            {
                // Set the Rigidbody to non-kinematic
                brickRigidbody.isKinematic = false;
            }
            else
            {
                Debug.LogWarning("No Rigidbody component found on the grandparent object.");
            }
        }
    }
}
