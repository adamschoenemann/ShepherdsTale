using UnityEngine;
using System.Collections;

/*
 *	This class handles the slightly annoying need to check whether sounds are
 *	provided or not. Use like: myAudioManager.PlayCorrect();, and it will play
 *	the sound if it exists and is not already playing.
 *	Expand as needed.
 *	Author: TW
 */
public class ShaveAudioManager : MonoBehaviour {

	public AudioSource failSound;
	public AudioSource correctSound;

	public void PlayFail()
	{
		Play(failSound);
	}

	public void PlayCorrect()
	{
		Play(correctSound);
	}

	private void Play(AudioSource sound)
	{
		if(sound != null && !sound.isPlaying)
		{
			sound.Play();
		}
	}
}
