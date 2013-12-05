using UnityEngine;
using System.Collections;

public class BoxLoggable : GameObjectLoggable
{

	private BoxScript bs;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		bs = GetComponent<BoxScript>();
		bs.onButtonEvent += (obj, args) => {
			LogEntry entry = new LogEntry(this, "ButtonHit")
				.AddGameObject("box", gameObject)
				.AddGameObject("button", args.button);
			logger.Enqueue(entry);
		};
	}


}
