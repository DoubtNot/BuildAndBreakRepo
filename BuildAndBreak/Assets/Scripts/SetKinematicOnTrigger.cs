using UnityEngine;

public class SetKinematicOnTrigger : MonoBehaviour
{
    // OnTriggerEnter is called when another collider enters the trigger collider
    private void OnTriggerEnter(Collider other)
    {
        // Check if the object entering the trigger has a specific tag (you can modify this condition)
        if (other.CompareTag("Brick"))
        {
            // Get the Rigidbody component of the object entering the trigger
            Rigidbody otherRigidbody = other.GetComponent<Rigidbody>();

            // Set the isKinematic property to true when the trigger event occurs
            if (otherRigidbody != null)
            {
                otherRigidbody.isKinematic = true;
            }
        }
    }
}
