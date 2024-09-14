using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class CollisionBehavior : MonoBehaviour
{
    public GameAction collisionEnterAction, collisionEnterRepeatAction, collisionEnterEndAction, collisionExitAction;
    public UnityEvent collisionEnterEvent, collisionEnterRepeatEvent, collisionEnterEndEvent, collisionExitEvent;
    private WaitForSeconds waitForCollisionEnterObj, waitForCollisionRepeatObj;
    public float collisionHoldTime = 0.01f, repeatHoldTime = 0.01f, exitHoldTime = 0.01f;
    public bool canRepeat;
    public int repeatTimes = 10;

    protected virtual void Awake()
    {
        waitForCollisionEnterObj = new WaitForSeconds(collisionHoldTime);
        waitForCollisionRepeatObj = new WaitForSeconds(repeatHoldTime);
    }

    private IEnumerator OnCollisionEnter(Collision collision)
    {
        yield return waitForCollisionEnterObj;
        collisionEnterEvent.Invoke();
        if (collisionEnterAction != null) collisionEnterAction.RaiseNoArgs();

        if (canRepeat)
        {
            var i = 0;
            while (i < repeatTimes)
            {
                yield return waitForCollisionEnterObj;
                i++;
                collisionEnterRepeatEvent.Invoke();
                if (collisionEnterRepeatAction != null) collisionEnterRepeatAction.RaiseNoArgs();
            }
        }

        yield return waitForCollisionRepeatObj;
        collisionEnterEndEvent.Invoke();
        if (collisionEnterEndAction != null) collisionEnterEndAction.RaiseNoArgs();
    }

    private void OnCollisionExit(Collision collision)
    {
        collisionExitEvent.Invoke();
        if (collisionExitAction != null) collisionExitAction.RaiseNoArgs();
    }
}
