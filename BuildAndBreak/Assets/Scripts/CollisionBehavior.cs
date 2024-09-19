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

    // Variable to specify a tag for collision detection
    [SerializeField] private string collisionTag = ""; // If empty, it won't filter by tag

    protected virtual void Awake()
    {
        waitForCollisionEnterObj = new WaitForSeconds(collisionHoldTime);
        waitForCollisionRepeatObj = new WaitForSeconds(repeatHoldTime);
    }

    private IEnumerator OnCollisionEnter(Collision collision)
    {
        // Check if a tag is specified, and if so, ensure the collided object has that tag
        if (string.IsNullOrEmpty(collisionTag) || collision.gameObject.CompareTag(collisionTag))
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
    }

    private void OnCollisionExit(Collision collision)
    {
        // Check if a tag is specified for exit, and if so, ensure the collided object has that tag
        if (string.IsNullOrEmpty(collisionTag) || collision.gameObject.CompareTag(collisionTag))
        {
            collisionExitEvent.Invoke();
            if (collisionExitAction != null) collisionExitAction.RaiseNoArgs();
        }
    }
}
