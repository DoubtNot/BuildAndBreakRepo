using UnityEngine;

public class BrickCollisionAudio : MonoBehaviour
{
    public AudioClip[] audioClips; // Array of audio clips

    private void OnTriggerEnter(Collider other)
    {
        // Check if the entering GameObject has the "Player" tag and is not in the "TransparentFX" layer
        if ((other) && other.gameObject.layer == LayerMask.NameToLayer("Default"))
        {
            // Check if there are audio clips assigned
            if (audioClips.Length > 0)
            {
                // Pick a random audio clip from the array
                AudioClip randomClip = audioClips[Random.Range(0, audioClips.Length)];

                // Create an empty GameObject at the trigger's location
                GameObject audioSourceObject = new GameObject("AudioSource");
                audioSourceObject.transform.position = transform.position;

                // Add AudioSource component to the newly created GameObject
                AudioSource audioSource = audioSourceObject.AddComponent<AudioSource>();

                // Set up audio source for 3D spatialization
                audioSource.spatialBlend = 1.0f; // 3D spatialization
                audioSource.rolloffMode = AudioRolloffMode.Logarithmic; // Logarithmic Rolloff mode

                // Assign the randomly picked audio clip to the AudioSource component
                audioSource.clip = randomClip;

                // Play the audio clip
                audioSource.Play();

                // Destroy the GameObject with AudioSource after the clip has finished playing
                Destroy(audioSourceObject, randomClip.length);
            }
            else
            {
                Debug.LogWarning("No audio clips assigned!");
            }
        }
    }
}
