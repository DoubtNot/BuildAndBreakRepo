using UnityEngine;

public class TransformResetter : MonoBehaviour
{
    // Public transform to set the attached object's transform to
    public Transform targetTransform;

    // Call this function to reset the transform
    public void ResetTransform()
    {
        if (targetTransform != null)
        {
            // Set the attached object's transform to the target transform
            transform.position = targetTransform.position;
            transform.rotation = targetTransform.rotation;
            transform.localScale = targetTransform.localScale;
        }
        else
        {
            Debug.LogWarning("Target transform is not assigned!");
        }
    }
}
