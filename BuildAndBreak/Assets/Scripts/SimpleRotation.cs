using UnityEngine;

public class SimpleRotation : MonoBehaviour
{
    public void RotateX()
    {
        // Rotate the GameObject 90 degrees on the X-axis
        transform.Rotate(Vector3.right, 90f);
    }

    public void RotateY()
    {
        // Rotate the GameObject 90 degrees on the Y-axis
        transform.Rotate(Vector3.up, 90f);
    }

    public void RotateZ()
    {
        // Rotate the GameObject 90 degrees on the Z-axis
        transform.Rotate(Vector3.forward, 90f);
    }
}
 