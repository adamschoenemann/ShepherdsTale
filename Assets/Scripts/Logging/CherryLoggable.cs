using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(Cherry))]
public class CherryLoggable : Loggable
{

	private Cherry cherry;

	protected override void SetupLogging()
	{
		base.SetupLogging();

		cherry = GetComponent<Cherry>();
		cherry.onPickUp += (obj, args) => {
			EnqueueEntry(
				new LogEntry(this, "CherryPickUp")
					.AddInt("health", args.health)
					.AddVector3("position", args.position)
			);
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