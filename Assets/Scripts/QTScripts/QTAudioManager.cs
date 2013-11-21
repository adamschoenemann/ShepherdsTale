using UnityEngine;
using System.Collections;

public class QTAudioManager : MonoBehaviour {

	public AudioSource failSound;
	public AudioSource correctSound;

	public void PlayFail()
	{
		Play(failSound);
	}

	private void Play(AudioSource sound)
	{
		if(sound != null && !sound.isPlaying)
		{
			sound.Play();
		}
	}
}
