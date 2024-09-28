using UnityEngine;

public class FollowLOCandROT : MonoBehaviour
{
    // The object to follow
    public Transform target; // This should make it visible in the Inspector

    // LateUpdate is called after all Update methods
    void Update()
    {
        if (target != null)
        {
            // Follow position
            transform.position = target.position;

            // Follow rotation
            transform.rotation = target.rotation;
        }
    }
}
