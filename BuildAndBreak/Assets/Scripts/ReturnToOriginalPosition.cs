using UnityEngine;
using System.Collections;

public class ReturnToOriginalPosition : MonoBehaviour
{
    public Transform originalPosition;
    public Rigidbody rb; // Reference to the Rigidbody component

    private Vector3 initialPosition;
    private Quaternion initialRotation;
    private Coroutine resetCoroutine = null; // Reference to the coroutine

    private void Start()
    {
        initialPosition = transform.position;
        initialRotation = transform.rotation;
    }

    public void ResetPosition()
    {
        // If a coroutine is already running, stop it and restart the timer
        if (resetCoroutine != null)
        {
            StopCoroutine(resetCoroutine);
        }
        resetCoroutine = StartCoroutine(ResetPositionCoroutine());
    }

    private IEnumerator ResetPositionCoroutine()
    {
        // Delay for 10 seconds
        yield return new WaitForSeconds(10f);

        // Reset to original position and rotation
        transform.position = originalPosition.position;
        transform.rotation = originalPosition.rotation;

        // Freeze the movement by making the Rigidbody kinematic
        rb.isKinematic = true;

        // Coroutine is finished, set it back to null
        resetCoroutine = null;
    }
}
