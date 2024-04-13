using UnityEngine;

public class GunAudio : MonoBehaviour
{
    public AudioClip[] audioClips; // Array of audio clips
    public float volume = 1.0f; // Volume for the audio

    // Function to play a random audio clip
    public void PlayAudio()
    {
        // Check if there are audio clips assigned
        if (audioClips.Length > 0)
        {
            // Pick a random audio clip from the array
            AudioClip randomClip = audioClips[Random.Range(0, audioClips.Length)];

            // Create a new GameObject to play the audio
            GameObject audioObject = new GameObject("AudioObject");
            AudioSource audioSource = audioObject.AddComponent<AudioSource>();

            // Set volume
            audioSource.volume = volume;

            // Assign the randomly picked audio clip to the AudioSource component
            audioSource.clip = randomClip;

            // Play the audio clip
            audioSource.Play();

            // Destroy the GameObject after the clip has finished playing
            Destroy(audioObject, randomClip.length);
        }
        else
        {
            Debug.LogWarning("No audio clips assigned!");
        }
    }
}
