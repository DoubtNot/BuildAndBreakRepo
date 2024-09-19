using UnityEngine;
using System.Collections;

public class ReturnToOriginalPosition : MonoBehaviour
{
    public Transform originalPosition;
    public Rigidbody rb; // Reference to the Rigidbody component

    private Vector3 initialPosition;
    private Quaternion initialRotation;

    private void Start()
    {
        initialPosition = transform.position;
        initialRotation = transform.rotation;
    }

    public void ResetPosition()
    {
        StartCoroutine(ResetPositionCoroutine());
    }

    private IEnumerator ResetPositionCoroutine()
    {
        // Delay for 5 seconds
        yield return new WaitForSeconds(5f);

        // Reset to original position and rotation
        transform.position = originalPosition.position;
        transform.rotation = originalPosition.rotation;

        // Freeze the movement by making the Rigidbody kinematic
        rb.isKinematic = true;

        // Delay for 0.1 seconds
        yield return new WaitForSeconds(0.1f);

        // Unfreeze the Rigidbody after a short delay
        rb.isKinematic = true;
    }
}
