using UnityEngine;
using System.Collections;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading;

public class Logger : MonoBehaviour
{
	private static Log log;
	private static List<GameObject> trackedObjects;
	public static Dictionary<int,GameObject> ObjectsMap;
	
	public static void Record (GameObject originator, string gameEvent, bool gameEventParameter)
	{
		if (log != null)
			log.Record (originator, gameEvent, gameEventParameter);
	}
	
	public static void Record (GameObject originator, string gameEvent)
	{
		if (log != null)
			log.Record (originator, gameEvent, true);
	}
	
	void Awake ()
	{
		trackedObjects = new List<GameObject>();
		GameObject player = GameObject.FindWithTag("Player");
		trackedObjects.Add(player);
		GameObject[] wolves = GameObject.FindGameObjectsWithTag("Enemy");
		foreach(GameObject wolf in wolves){
			trackedObjects.Add(wolf);
		}

		log = Log.CreateNew(trackedObjects);

		StartCoroutine(RecordSession());
	}

	void OnApplicationQuit ()
	{
		if (log != null) {
			StopAllCoroutines ();
			log.Save ();
		}
	}
	
	
	private IEnumerator RecordSession ()
	{
		Time.timeScale = 1;
		while (true) {
			Record (this.gameObject, "None");
			yield return new WaitForSeconds(0.04f);
		}
	}
}
