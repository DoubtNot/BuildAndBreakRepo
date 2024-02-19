using System.Collections;
using System.Collections.Generic;
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
        }
        else
        {
            isFlying = false;
        }
    }
}
