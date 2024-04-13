using UnityEngine;
using System.Collections;

public class ResetPlayerLocation : MonoBehaviour
{
    public Transform originalPosition;

    private Vector3 initialPosition;
    private Quaternion initialRotation;

    private void Start()
    {
        initialPosition = transform.position;
        initialRotation = transform.rotation;
    }

    public void ResetPosition()
    {
        // Reset to original position and rotation
        transform.position = originalPosition.position;
        transform.rotation = originalPosition.rotation;
    }
}
