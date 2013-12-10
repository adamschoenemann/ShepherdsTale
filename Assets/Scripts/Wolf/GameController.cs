using UnityEngine;
using System;
using System.Collections;

public class GameController : MonoBehaviour
{
	protected bool displayRestart = false,
						 displayComplete = false;

	public event EventHandler onLevelRestarting;

	public static void PlaySound(AudioSource sound)
	{
		sound.Play();
	}


	public IEnumerator RestartLevel()
	{
		OnLevelRestarting();
		yield return new WaitForSeconds(4.0f);
		Application.LoadLevel(Application.loadedLevelName);
	}

	public void OnLevelRestarting()
	{
		if(onLevelRestarting != null)
		{
			onLevelRestarting(this, EventArgs.Empty);
		}
	}
}