using UnityEngine;
using System.Collections;

public class ReturnMoveToolToOriginalPosition : MonoBehaviour
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
        StartCoroutine(ResetPositionCoroutine());
    }

    private IEnumerator ResetPositionCoroutine()
    {
        // Delay for 5 seconds
        yield return new WaitForSeconds(5f);

        // Reset to original position and rotation
        transform.position = originalPosition.position;
        transform.rotation = originalPosition.rotation;
    }
}
