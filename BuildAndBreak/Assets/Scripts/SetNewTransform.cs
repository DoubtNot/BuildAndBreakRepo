using UnityEngine;

public class SetNewTransform : MonoBehaviour
{

    public Transform newPosition;


    public void SetPosition()
    {
        transform.position = newPosition.position;
        transform.rotation = newPosition.rotation;
    }

}
