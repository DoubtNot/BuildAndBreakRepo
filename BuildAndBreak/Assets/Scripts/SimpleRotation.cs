using UnityEngine;

public class SimpleRotation : MonoBehaviour
{
    public void RotateX()
    {
        // Check if the GameObject's X rotation is either 0 or 90 degrees
        float currentXRotation = transform.eulerAngles.x;
        if (Mathf.Approximately(currentXRotation, 0f))
        {
            // Rotate the GameObject to 90 degrees on the X-axis
            transform.rotation = Quaternion.Euler(90f, transform.eulerAngles.y, transform.eulerAngles.z);
        }
        else if (Mathf.Approximately(currentXRotation, 90f))
        {
            // Rotate the GameObject back to 0 degrees on the X-axis
            transform.rotation = Quaternion.Euler(0f, transform.eulerAngles.y, transform.eulerAngles.z);
        }
    }

    public void RotateY()
    {
        // Check if the GameObject's Y rotation is either 0 or 90 degrees
        float currentYRotation = transform.eulerAngles.y;
        if (Mathf.Approximately(currentYRotation, 0f))
        {
            // Rotate the GameObject to 90 degrees on the Y-axis
            transform.rotation = Quaternion.Euler(transform.eulerAngles.x, 90f, transform.eulerAngles.z);
        }
        else if (Mathf.Approximately(currentYRotation, 90f))
        {
            // Rotate the GameObject back to 0 degrees on the Y-axis
            transform.rotation = Quaternion.Euler(transform.eulerAngles.x, 0f, transform.eulerAngles.z);
        }
    }

    public void RotateZ()
    {
        // Check if the GameObject's Z rotation is either 0 or 90 degrees
        float currentZRotation = transform.eulerAngles.z;
        if (Mathf.Approximately(currentZRotation, 0f))
        {
            // Rotate the GameObject to 90 degrees on the Z-axis
            transform.rotation = Quaternion.Euler(transform.eulerAngles.x, transform.eulerAngles.y, 90f);
        }
        else if (Mathf.Approximately(currentZRotation, 90f))
        {
            // Rotate the GameObject back to 0 degrees on the Z-axis
            transform.rotation = Quaternion.Euler(transform.eulerAngles.x, transform.eulerAngles.y, 0f);
        }
    }
}
