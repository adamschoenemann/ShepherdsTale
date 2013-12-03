using UnityEngine;
using System;
using System.Threading;
using System.Collections;
using System.Collections.Generic;

public class Logger : MonoBehaviour
{

	public int scene_id {get; private set;}
	public bool enabled = true;
	public float time {private set; get;}
	
	void Awake()
	{
		GameObject controllerObj = GameObject.FindWithTag(Tags.gameController);
		if(controllerObj == null) Debug.Log("No GameController found!");
		GameController gc = controllerObj.GetComponent<GameController>();

		gc.onLevelRestarting += (obj, args) => {
			enabled = false;
			StartCoroutine(LogAPI.instance.Flush());
			StartCoroutine(LogAPI.instance.CloseScene(this));
		};
	}

	public void RegisterLoggable(Loggable l, Action<int> cb = null)
	{
		StartCoroutine(LogAPI.instance.RegisterLoggable(l, this, cb));
	}

	void Start()
	{
		if(enabled == false)
			return;
		scene_id = 0;
		time = Time.time;
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

	
	void OnApplicationQuit()
	{
		print("OnApplicationQuit");
		int retries = 10;

		// Figure out how to to clean this up properly!! ARGGH
		(new Thread(new ThreadStart(() => {
			// IEnumerable e = LogAPI.instance.Flush().GetEnumerator();
			// foreach(object obj in LogAPI.instance.Flush())
			// {
			// 	// while(www.isDone == false);
			// 	// Debug.Log("Flush done");
			// }
		}))).Start();

		while(LogAPI.instance.Enqueued() > 0 && retries-- > 0)
		{
			StartCoroutine(LogAPI.instance.Flush());
		}

		StartCoroutine(LogAPI.instance.StopSession());
		retries = 10;
		
		StopAllCoroutines();
	}

}