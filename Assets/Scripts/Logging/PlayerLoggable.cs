using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(PlayerController))]
public class PlayerLoggable : Loggable
{


	protected override void SetupLogging()
	{
		base.SetupLogging();
		
	}


	public override bool ShouldLogRoutinely()
	{
		return true;
	}


	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		entry.AddGameObject(gameObject.name, gameObject);
	}


}