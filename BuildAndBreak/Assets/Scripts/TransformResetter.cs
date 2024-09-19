using UnityEngine;

public class TransformResetter : MonoBehaviour
{
    // Public transform to set the attached object's transform to
    public Transform resetTransform;
    public Transform newTransform; // New public transform variable
    public Rigidbody rb; // Reference to the Rigidbody component

    // Call this function to reset the transform
    public void ResetTransform()
    {
        // Set the attached object's transform to the target transform
        transform.position = resetTransform.position;
        transform.rotation = resetTransform.rotation;
        transform.localScale = resetTransform.localScale;
    }

    // Call this function to set the transform to newTransform
    public void NewTransform()
    {
        // Set the attached object's transform to the new transform
        transform.position = newTransform.position;
        transform.rotation = newTransform.rotation;
        transform.localScale = newTransform.localScale;
    }
}
