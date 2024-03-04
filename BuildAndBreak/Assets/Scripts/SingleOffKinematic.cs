using UnityEngine;

public class SingleOffKinematic : MonoBehaviour
{
    private void OnCollisionEnter(Collision collision)
    {
        // Check if the collided object has the tag "Brick"
        if (collision.gameObject.CompareTag("Brick"))
        {
            // Get the grandparent transform
            Transform grandparentTransform = collision.gameObject.transform;

            // Get the rigidbody from the grandparent
            Rigidbody brickRigidbody = grandparentTransform.GetComponent<Rigidbody>();

            brickRigidbody.isKinematic = false;
        }
    }
}
