using UnityEngine;
using System.Collections;
using System.Collections.Generic;

class Loggable : MonoBehaviour
{

	public static float logRate = 1.0f;
	public string name;
	private Logger logger;

	void Awake()
	{
		logger = GameObject.FindWithTag(Tags.logger).GetComponent<Logger>();

	}

	void Start()
	{
		StartCoroutine(LoggingRoutine());
	}

	public void Log()
	{
		LogEntry entry = new LogEntry();
		entry.AddGameObject(gameObject);

		logger.Enqueue(entry);
	}

	public IEnumerator LoggingRoutine()
	{
		while(true)
		{
			Log();
			yield return new WaitForSeconds(logRate);
		}
	}

	void Stop()
	{
		StopAllCoroutines();
	}

	void OnDestroy()
	{
		StopAllCoroutines();
	}



}