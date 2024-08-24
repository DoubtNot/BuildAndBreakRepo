using UnityEngine;

public class SnapToObjectPoints : MonoBehaviour
{
    [SerializeField] private Transform otherTransform;
    [SerializeField] private float snapScaleX = 1, snapScaleY = 1, snapScaleZ = 1;
    private float posX, otherX, posY, otherY, posZ, otherZ;

    void Update()
    {
        // Snap position
        otherX = (otherTransform.position.x >= 0f) ? (otherTransform.position.x + snapScaleX * 0.5f) : (otherTransform.position.x - snapScaleX * 0.5f);
        posX = otherX - (otherX % snapScaleX);

        otherY = (otherTransform.position.y >= 0f) ? (otherTransform.position.y + snapScaleY * 0.5f) : (otherTransform.position.y - snapScaleY * 0.5f);
        posY = otherY - (otherY % snapScaleY);

        otherZ = (otherTransform.position.z >= 0f) ? (otherTransform.position.z + snapScaleZ * 0.5f) : (otherTransform.position.z - snapScaleZ * 0.5f);
        posZ = otherZ - (otherZ % snapScaleZ);

        transform.position = new Vector3(posX, posY, posZ);

        // Snap rotation to match the other object's rotation
        transform.rotation = Quaternion.Euler(
            Mathf.Round(otherTransform.rotation.eulerAngles.x / 90f) * 90f,
            Mathf.Round(otherTransform.rotation.eulerAngles.y / 90f) * 90f,
            Mathf.Round(otherTransform.rotation.eulerAngles.z / 90f) * 90f
        );
    }
}
