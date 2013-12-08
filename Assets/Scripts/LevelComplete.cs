using UnityEngine;
using System.Collections;
using System;

public class LevelComplete : Loggable
{

	public event EventHandler onPlayerEntered;

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject != null && other.gameObject.tag == Tags.player)	
		{
			LogEntry entry = new LogEntry(this, "SneakLevelComplete")
				.AddVector3("position", transform.position);
			EnqueueEntry(entry);

			if(onPlayerEntered != null)
				onPlayerEntered(this, EventArgs.Empty);
		}
	}

	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		
	}

}
