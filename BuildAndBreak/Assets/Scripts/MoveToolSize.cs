using UnityEngine;

public class MoveToolSize : MonoBehaviour
{
    public GameObject[] gameObjects;
    private int currentIndex = 0;

    void Start()
    {
        // Ensure only the first game object is visible at start
        ShowOnlyCurrent();
    }


    public void SelectPrevious()
    {
        // Decrease the current index
        currentIndex--;
        if (currentIndex < 0)
        {
            currentIndex = gameObjects.Length - 1;
        }

        // Show only the current selected game object
        ShowOnlyCurrent();
    }

    public void SelectNext()
    {
        // Increase the current index
        currentIndex++;
        if (currentIndex >= gameObjects.Length)
        {
            currentIndex = 0;
        }

        // Show only the current selected game object
        ShowOnlyCurrent();
    }

    void ShowOnlyCurrent()
    {
        // Hide all game objects
        foreach (GameObject obj in gameObjects)
        {
            obj.SetActive(false);
        }

        // Show only the current selected game object
        gameObjects[currentIndex].SetActive(true);
    }
}
