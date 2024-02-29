using UnityEngine;

public class BrickMoveManipulation : MonoBehaviour
{
    private Vector3 relativeOffset;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Brick"))
        {
            // Calculate and store the relative offset
            relativeOffset = other.transform.position - transform.position;

            // Move the bricks with the relative offset during each frame
            GameObject[] bricks = GameObject.FindGameObjectsWithTag("Brick");
            foreach (GameObject brick in bricks)
            {
                brick.transform.position = transform.position + relativeOffset;
            }
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Brick"))
        {
            // Clear the relative offset when the brick exits the trigger
            relativeOffset = Vector3.zero;
        }
    }
}
