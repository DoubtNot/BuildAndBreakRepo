using UnityEngine;

public class MusicPlayer : MonoBehaviour
{
    public AudioClip[] songs; // Array of songs to be played
    private AudioSource audioSource;
    private int currentSongIndex = 0;
    private bool isPlaying = false;
    private Coroutine waitForSongEndCoroutine;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    void PlaySong(int index)
    {
        if (index >= 0 && index < songs.Length)
        {
            audioSource.clip = songs[index];
            audioSource.Play();
            if (waitForSongEndCoroutine != null)
                StopCoroutine(waitForSongEndCoroutine); // Stop the previous coroutine if it exists
            waitForSongEndCoroutine = StartCoroutine(WaitForSongEnd(audioSource.clip.length)); // Wait for the song to end
            isPlaying = true;
        }
        else
        {
            Debug.LogError("Invalid song index: " + index);
        }
    }

    System.Collections.IEnumerator WaitForSongEnd(float duration)
    {
        yield return new WaitForSecondsRealtime(duration);
        if (isPlaying)
        {
            SkipSong();
        }
    }

    public void SkipSong()
    {
        currentSongIndex++;
        if (currentSongIndex >= songs.Length)
        {
            currentSongIndex = 0; // Loop back to the beginning of the playlist
        }
        PlaySong(currentSongIndex);
    }

    public void PreviousSong()
    {
        currentSongIndex--;
        if (currentSongIndex < 0)
        {
            currentSongIndex = songs.Length - 1; // Go to the last song in the playlist
        }
        PlaySong(currentSongIndex);
    }

    public void BeginPlaying()
    {
        PlaySong(currentSongIndex);
        isPlaying = true;
    }

    public void StopPlaying()
    {
        audioSource.Stop();
        isPlaying = false;
        if (waitForSongEndCoroutine != null)
            StopCoroutine(waitForSongEndCoroutine); // Stop the coroutine when stopping playing
    }
}
