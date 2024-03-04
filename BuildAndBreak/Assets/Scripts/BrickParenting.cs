using UnityEngine;
using System.Collections.Generic;

public class BrickParenting : MonoBehaviour
{
    public List<GameObject> enteredObjects = new List<GameObject>();

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Brick"))
        {
            // Make the brick a child of the object with the trigger
            other.transform.parent = transform;

            // Add the object to the list of entered objects
            enteredObjects.Add(other.gameObject);

            // Get the Rigidbody component of the object entering the trigger
            Rigidbody otherRigidbody = other.GetComponent<Rigidbody>();

            // Set the isKinematic property to true when the trigger event occurs
            if (otherRigidbody != null)
            {
                otherRigidbody.isKinematic = true;
            }
        }
    }


    // Function to unparent all entered objects
    public void UnparentObjects()
    {
        // Create a copy of the list to avoid modifying it while iterating
        List<GameObject> copyOfEnteredObjects = new List<GameObject>(enteredObjects);

        foreach (GameObject enteredObject in copyOfEnteredObjects)
        {
            // Unparent the object
            enteredObject.transform.parent = null;

            // Optionally, you can perform additional actions here if needed

            // Remove the object from the list
            enteredObjects.Remove(enteredObject);
        }
    }

}
