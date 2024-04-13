using UnityEngine;

public class TransformResetter : MonoBehaviour
{
    // Public transform to set the attached object's transform to
    public Transform targetTransform;
    public Rigidbody rb; // Reference to the Rigidbody component

    // Call this function to reset the transform
    public void ResetTransform()
    {
        // Set the attached object's transform to the target transform
        transform.position = targetTransform.position;
        transform.rotation = targetTransform.rotation;
        transform.localScale = targetTransform.localScale;

        // Freeze all position and rotation constraints
        rb.constraints = RigidbodyConstraints.FreezeAll;
    }
}
