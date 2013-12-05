using UnityEngine;
using System.Collections;

public class SneakLevelCompleteLoggable : Loggable
{

	void Awake()
	{
		LevelComplete.onPlayerEntered += (obj, args) => {
			LogEntry entry = new LogEntry(this, "SneakLevelComplete")
				.AddVector3("position", transform.position);
			logger.Enqueue(entry);
		};
	}


	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		
	}

}
