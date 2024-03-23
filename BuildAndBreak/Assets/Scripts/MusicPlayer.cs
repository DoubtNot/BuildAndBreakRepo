using UnityEngine;
using System.Collections;

public class MusicPlayer : MonoBehaviour
{
    public AudioClip[] songs; // Array of songs to be played
    private AudioSource audioSource;
    private int currentSongIndex = 0;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        PlaySong(currentSongIndex); // Start playing the first song
    }

    void PlaySong(int index)
    {
        if (index >= 0 && index < songs.Length)
        {
            audioSource.clip = songs[index];
            audioSource.Play();
            StartCoroutine(WaitForSongEnd(audioSource.clip.length)); // Wait for the song to end
        }
        else
        {
            Debug.LogError("Invalid song index: " + index);
        }
    }

    IEnumerator WaitForSongEnd(float duration)
    {
        yield return new WaitForSecondsRealtime(duration);
        SkipSong();
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
}
