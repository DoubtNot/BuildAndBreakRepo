using UnityEngine;

public class MaterialChanger : MonoBehaviour
{
    public Material newMaterial; // Assign the material you want to change to in the Unity Editor
    public GameObject targetObject; // Assign the target object in the Unity Editor

    private void OnTriggerEnter(Collider other)
    {
        // Check if the entering collider has the tag "Hand"
        if (other.CompareTag("Hand"))
        {
            // Call the ChangeColor method when a collider with the "Hand" tag enters the trigger zone
            ChangeColor();
        }
    }

    // Function to change the material of the specified object
    public void ChangeColor()
    {
        if (targetObject == null)
        {
            Debug.LogError("Target object is not assigned in the inspector.");
            return;
        }

        Renderer renderer = targetObject.GetComponent<Renderer>();

        if (renderer != null)
        {
            renderer.material = newMaterial;
        }
        else
        {
            Debug.LogError("The specified object does not have a Renderer component.");
        }
    }
}
