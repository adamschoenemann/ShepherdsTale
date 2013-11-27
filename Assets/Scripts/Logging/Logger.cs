using UnityEngine;
using System.Collections;
using System.Collections.Generic;

class Logger : MonoBehaviour
{

	private List<GameObject> objects = new List<GameObject>();

	public void StartLogging()
	{
		print("Adding new GameObjects");
		objects.Clear();
		objects.Add(GameObject.FindWithTag(Tags.player));
		objects.AddRange(GameObject.FindGameObjectsWithTag(Tags.enemy));

		foreach(GameObject obj in objects)
		{
			print("Object: " + obj);
		}
		StartCoroutine(LogAPI.instance.StartSession(objects));
		StartCoroutine(LogAPI.instance.StartLogging(this));
	}

	void Awake()
	{
		print("Start");
		StartLogging();
	}

	void OnDestroy()
	{
		StopAllCoroutines();
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