using UnityEngine;
using System.Collections;
using System.Collections.Generic;

class Logger : MonoBehaviour
{

	
	public void Log(LogEntry e)
	{

	}

	void Awake()
	{
		StartCoroutine(LogAPI.instance.StartSession());
		StartCoroutine(
			LogAPI.instance.RegisterScene(Application.loadedLevelName, this)
		);
	}

	public void Enqueue(LogEntry entry)
	{
		LogAPI.instance.Enqueue(entry, this);
	}

	// Find a way to clean up properly, goddammit!
	// Try with a eval solution when going to web environment
	void OnDestroy()
	{
		LogAPI.instance.CloseScene();
		// StopAllCoroutines();
	}

	void OnApplicationQuit()
	{
		print("OnApplicationQuit");
		StartCoroutine(LogAPI.instance.StopSession());
		int retries = 10;
		while(retries-- > 0 && LogAPI.instance.sessionClosed == false)
		{
			
		}
		StopAllCoroutines();
	}

}