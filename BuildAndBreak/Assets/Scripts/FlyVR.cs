using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.InputSystem;

public class FlyVR : MonoBehaviour
{
    public GameObject leftHand;

    public InputActionReference flyInputAction;

    public float flyingSpeed = 0.8f;
    private bool isFlying = false;

    private XRController leftHandController;

    void Start()
    {
        leftHandController = leftHand.GetComponent<XRController>();
        flyInputAction.action.Enable();
    }

    void Update()
    {
        if (flyInputAction.action.ReadValue<float>() > 0.1f)
        {
            isFlying = true;

            // Get the forward direction of the left hand
            Vector3 flyDirection = leftHand.transform.forward;

            // Normalize the direction to maintain consistent speed
            flyDirection.Normalize();

            // Move the player in the direction of the left hand
            transform.position += flyDirection * flyingSpeed * Time.deltaTime;

            // Clamp the Y position to prevent flying below -0.1
            transform.position = new Vector3(transform.position.x, Mathf.Max(transform.position.y, -0.1f), transform.position.z);
        }
        else
        {
            isFlying = false;
        }
    }
}

