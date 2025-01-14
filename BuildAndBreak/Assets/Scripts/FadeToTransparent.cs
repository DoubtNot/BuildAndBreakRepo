using UnityEngine;

public class FadeToTransparent : MonoBehaviour
{
    private Renderer objRenderer;
    private Color originalColor;
    private float fadeDuration = 1f;

    void Start()
    {
        // Get the Renderer component of the object
        objRenderer = GetComponent<Renderer>();

        if (objRenderer != null)
        {
            // Store the original color of the material
            originalColor = objRenderer.material.color;
            // Start the fade coroutine
            StartCoroutine(FadeOut());
        }
        else
        {
            Debug.LogError("Renderer not found on the object.");
        }
    }

    private System.Collections.IEnumerator FadeOut()
    {
        float elapsedTime = 0f;

        while (elapsedTime < fadeDuration)
        {
            // Calculate the transparency level based on elapsed time
            float alpha = Mathf.Lerp(originalColor.a, 0f, elapsedTime / fadeDuration);

            // Apply the new color to the material
            objRenderer.material.color = new Color(originalColor.r, originalColor.g, originalColor.b, alpha);

            elapsedTime += Time.deltaTime;
            yield return null; // Wait for the next frame
        }

        // Ensure the object is completely transparent at the end
        objRenderer.material.color = new Color(originalColor.r, originalColor.g, originalColor.b, 0f);
    }

    public void Reset()
    {
        // Stop any ongoing fade process
        StopAllCoroutines();

        // Reset the object's color to the original
        objRenderer.material.color = originalColor;

        // Restart the fade process
        StartCoroutine(FadeOut());
    }
}
