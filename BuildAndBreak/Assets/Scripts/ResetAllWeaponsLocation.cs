using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ResetAllWeaponsLocation : MonoBehaviour
{
    public float resetDelay = 5f; // Delay before resetting
    public float freezeDuration = 0.1f; // Duration to freeze the Rigidbody
    public List<Transform> originalPositions; // List of original positions for objects
    public List<Rigidbody> rbs; // List of Rigidbody components

    private List<Vector3> initialPositions; // Initial positions of objects
    private List<Quaternion> initialRotations; // Initial rotations of objects

    private void Start()
    {
        // Store initial positions and rotations
        StoreInitialTransforms();
    }

    private void StoreInitialTransforms()
    {
        initialPositions = new List<Vector3>();
        initialRotations = new List<Quaternion>();

        foreach (Transform originalPosition in originalPositions)
        {
            initialPositions.Add(originalPosition.position);
            initialRotations.Add(originalPosition.rotation);
        }
    }

    public void ResetObjects()
    {
        StartCoroutine(ResetObjectsCoroutine());
    }

    private IEnumerator ResetObjectsCoroutine()
    {
        // Reset each object
        for (int i = 0; i < originalPositions.Count; i++)
        {
            Transform originalPosition = originalPositions[i];
            Rigidbody rb = rbs[i];

            // Reset position and rotation
            rb.MovePosition(originalPosition.position);
            rb.MoveRotation(originalPosition.rotation);

            // Freeze the Rigidbody
            rb.isKinematic = true;
        }

        // Delay before unfreezing
        yield return new WaitForSeconds(freezeDuration);

        // Unfreeze each Rigidbody
        foreach (Rigidbody rb in rbs)
        {
            rb.isKinematic = false;
        }
    }
}
