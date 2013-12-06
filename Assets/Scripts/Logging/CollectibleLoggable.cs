using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CollectibleLoggable : Loggable
{

	private Collectible collectible;

	protected override void SetupLogging()
	{
		base.SetupLogging();

		collectible = GetComponent<Collectible>();
		collectible.onPickUp += (obj, args) => {
			logger.Enqueue(
				new LogEntry(this, "CollectiblePickUp")
					.AddInt("collectiblesPickedUp", args.collectiblesPickedUp)
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