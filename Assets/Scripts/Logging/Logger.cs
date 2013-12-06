using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class Logger : MonoBehaviour
{

	public int scene_id {get; private set;}
	public bool enabled = true;
	
	public void RegisterLoggable(Loggable l, Action<int> cb = null)
	{
		StartCoroutine(LogAPI.instance.RegisterLoggable(l, this, cb));
	}

	void Awake()
	{
		if(enabled == false)
			return;
		scene_id = 0;
		StartCoroutine(LogAPI.instance.StartSession());
		StartCoroutine(
			LogAPI.instance.RegisterScene(
				Application.loadedLevelName, 
				this,
				(id) => {
					scene_id = id;
					Debug.Log("scene_id: " + scene_id);
				}
			)
		);
	}

	public void Enqueue(LogEntry entry)
	{
		entry.scene_id = scene_id;
		if(LogAPI.instance.Enqueue(entry))
		{
			StartCoroutine(LogAPI.instance.Flush());
		}
	}

	// Find a way to clean up properly, goddammit!
	// Try with a eval solution when going to web environment
	void OnDestroy()
	{
		LogAPI.instance.CloseScene(this);
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