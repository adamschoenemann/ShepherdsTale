using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public abstract class Loggable : MonoBehaviour
{

	public static float logRate = 0.5f;
	public bool enabled = true;
	public string name;
	public int id {get; private set;}
	protected Logger logger;

	protected void Awake()
	{
		if(enabled == false)
			return;
		SetupLogging();
	}

	protected virtual void SetupLogging()
	{
		this.id = 0;
		logger = GameObject.FindWithTag(Tags.logger).GetComponent<Logger>();
		logger.RegisterLoggable(this, id => this.id = id);
		if(String.IsNullOrEmpty(name))
		{
			name = gameObject.name;
		}
	}

	protected void Start()
	{
		StartLoggingRoutine();
	}

	protected void StartLoggingRoutine()
	{
		StartCoroutine(LoggingRoutine());	
	}

	protected virtual void Log()
	{
		if(id == 0) return;
		LogEntry entry = new LogEntry(this);
		
		BeforeEnqueueEntry(entry);

		logger.Enqueue(entry);
	}

	protected abstract void BeforeEnqueueEntry(LogEntry entry);

	public IEnumerator LoggingRoutine()
	{
		while(true)
		{
			if(enabled)
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