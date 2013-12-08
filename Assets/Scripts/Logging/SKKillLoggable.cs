using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SKKillLoggable : Loggable
{

	private SK_KillScript killScript;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		killScript = GetComponent<SK_KillScript>();

		killScript.onStateChangeEvent += (obj, args) => {
			LogEntry entry = new LogEntry(this, "SKStateChange")
				.AddString("oldState", args.oldState.ToString())
				.AddString("newState", args.newState.ToString());
			EnqueueEntry(entry);
		};

	}

	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		entry.AddGameObject(gameObject.name, gameObject);
	}


}