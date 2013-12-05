using UnityEngine;
using System;
using System.Collections;

public class GameController : MonoBehaviour
{
	protected bool displayRestart = false,
						 displayComplete = false;

	public event EventHandler onLevelRestarting;

	public IEnumerator RestartLevel()
	{
		if(onLevelRestarting != null)
		{
			onLevelRestarting(this, EventArgs.Empty);
		}
		yield return new WaitForSeconds(4.0f);
		Application.LoadLevel(Application.loadedLevelName);
	}
}