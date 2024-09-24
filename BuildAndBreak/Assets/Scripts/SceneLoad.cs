using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoad : MonoBehaviour
{
    // This will allow you to input a scene name from the Inspector
    [SerializeField] private string sceneName;

    // Call this method to load the scene
    public void LoadScene()
    {
        if (!string.IsNullOrEmpty(sceneName))
        {
            SceneManager.LoadScene(sceneName);
        }
        else
        {
            Debug.LogWarning("Scene name is empty or null. Please provide a valid scene name.");
        }
    }
}
