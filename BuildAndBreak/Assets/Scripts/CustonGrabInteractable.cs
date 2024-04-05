using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class CustomGrabInteractable : XRGrabInteractable
{
    [SerializeField]
    private Transform leftAttachTransform;
    [SerializeField]
    private Transform rightAttachTransform;

    public void SetLeftAttachTransform(Transform newTransform)
    {
        leftAttachTransform = newTransform;
    }

    public void SetRightAttachTransform(Transform newTransform)
    {
        rightAttachTransform = newTransform;
    }

    protected override void OnSelectEntered(SelectEnterEventArgs args)
    {
        Transform newAttachTransform = null;

        if (args.interactorObject.transform.CompareTag("LeftHand"))
        {
            newAttachTransform = leftAttachTransform;
        }
        else if (args.interactorObject.transform.CompareTag("RightHand"))
        {
            newAttachTransform = rightAttachTransform;
        }

        // Assign the new attachTransform before calling the base method
        attachTransform = newAttachTransform;

        base.OnSelectEntered(args);
    }
}
