using UnityEngine;

public class BrickParenting : MonoBehaviour
{
    public GameObject parentCube;


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("TopTrigger"))
        {
            Transform currentParent = other.transform.parent;

            // Traverse the parent hierarchy until reaching the topmost parent
            while (currentParent.parent != null)
            {
                currentParent = currentParent.parent;
            }

            // Set the entering object as a child of the topmost parent
            parentCube.transform.parent = currentParent;

            Rigidbody parentRigidbody = parentCube.GetComponent<Rigidbody>();
            parentRigidbody.isKinematic = true;
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("TopTrigger"))
        {

            // Set the entering object as a child of the specified parentCube
            parentCube.transform.parent = parentCube.transform;

            Rigidbody parentRigidbody = parentCube.GetComponent<Rigidbody>();

            parentRigidbody.isKinematic = false;

        }
    }
}


//Rigidbody parentRigidbody = parentCube.GetComponent<Rigidbody>();

//parentRigidbody.isKinematic = true;

//BoxCollider boxCollider = parentCube.GetComponent<BoxCollider>();

//boxCollider.enabled = true;