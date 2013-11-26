using UnityEngine;
using System.Collections;
using System.Collections.Generic;

class Logger : MonoBehaviour
{

	public List<GameObject> objects = new List<GameObject>();

	public void StartLogging()
	{
		StartCoroutine(LogAPI.StartSession(objects.ToArray()));
		StartCoroutine(LogAPI.LogSession(this));
	}

	void Awake()
	{
		StartLogging();
	}

	void OnApplicationQuit()
	{
		print("OnApplicationQuit");
		StartCoroutine(LogAPI.StopSession());
		while(LogAPI.sessionClosed == false)
		{
			
		}
		StopAllCoroutines();
	}

}