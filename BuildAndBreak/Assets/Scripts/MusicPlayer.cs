using UnityEngine;
using System.Collections.Generic;

public class MusicPlayer : MonoBehaviour
{
    public List<AudioClip> songs; // List of songs to be played
    private AudioSource audioSource;
    private int currentSongIndex = 0;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        PlaySong(currentSongIndex); // Start playing the first song
    }

    void Update()
    {
        // Your code to trigger skip or reverse functions can be placed here
        // For example, you might use Input.GetKeyDown(KeyCode.Space) to skip a song
        // or Input.GetKeyDown(KeyCode.Backspace) to go back to the previous song
    }

    void PlaySong(int index)
    {
        if (index >= 0 && index < songs.Count)
        {
            audioSource.clip = songs[index];
            audioSource.Play();
        }
        else
        {
            Debug.LogError("Invalid song index: " + index);
        }
    }

    public void SkipSong()
    {
        currentSongIndex++;
        if (currentSongIndex >= songs.Count)
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
            currentSongIndex = songs.Count - 1; // Go to the last song in the playlist
        }
        PlaySong(currentSongIndex);
    }
}

