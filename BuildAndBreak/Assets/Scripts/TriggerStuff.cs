using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class TriggerStuff : MyMonoEventsBehaviour
{
    public GameAction triggerEnterAction, triggerEnterRepeatAction, triggerEnterEndAction, triggerExitAction;
    public UnityEvent triggerEnterEvent, triggerEnterRepeatEvent, triggerEnterEndEvent, triggerExitEvent;
    private WaitForSeconds waitForTriggerEnterObj, waitForTriggerRepeatObj;
    public float triggerHoldTime = 0.01f, repeatHoldTime = 0.01f, exitHoldTime = 0.01f;
    public bool canRepeat;
    public int repeatTimes = 10;

    // New field to set tag in the inspector
    public string filterTag = "";

    protected override void Awake()
    {
        base.Awake();
        waitForTriggerEnterObj = new WaitForSeconds(triggerHoldTime);
        waitForTriggerRepeatObj = new WaitForSeconds(repeatHoldTime);
    }

    private IEnumerator OnTriggerEnter(Collider other)
    {
        // Check if a tag is specified, and if so, filter by that tag
        if (!string.IsNullOrEmpty(filterTag) && !other.CompareTag(filterTag))
        {
            yield break; // Exit if the object's tag doesn't match the specified tag
        }

        yield return waitForTriggerEnterObj;
        triggerEnterEvent.Invoke();
        if (triggerEnterAction != null) triggerEnterAction.RaiseNoArgs();

        if (canRepeat)
        {
            var i = 0;
            while (i < repeatTimes)
            {
                yield return waitForTriggerEnterObj;
                i++;
                triggerEnterRepeatEvent.Invoke();
                if (triggerEnterRepeatAction != null) triggerEnterRepeatAction.RaiseNoArgs();
            }
        }

        yield return waitForTriggerRepeatObj;
        triggerEnterEndEvent.Invoke();
        if (triggerEnterEndAction != null) triggerEnterEndAction.RaiseNoArgs();
    }

    private void OnTriggerExit(Collider other)
    {
        // Check if a tag is specified, and if so, filter by that tag
        if (!string.IsNullOrEmpty(filterTag) && !other.CompareTag(filterTag))
        {
            return; // Exit if the object's tag doesn't match the specified tag
        }

        triggerExitEvent.Invoke();
        if (triggerExitAction != null) triggerExitAction.RaiseNoArgs();
    }
}
