using UnityEngine;

public class SnapColliderToParent : MonoBehaviour
{
    [SerializeField] private Transform objectToSnap;
    [SerializeField] private Transform targetObject;

    // Call this function to reset the collider position
    public void ResetCollider()
    {
        // Ensure both objects are not null
        if (objectToSnap != null && targetObject != null)
        {
            // Snap the position of objectToSnap to targetObject
            objectToSnap.position = targetObject.position;

            objectToSnap.rotation = targetObject.rotation;

        }
        else
        {
            Debug.LogWarning("One or both objects are not assigned!");
        }
    }
}