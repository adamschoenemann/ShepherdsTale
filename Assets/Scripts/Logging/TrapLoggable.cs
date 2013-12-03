using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(Trap))]
public class TrapLoggable : Loggable
{

	private Trap trap;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		trap = GetComponent<Trap>();

		trap.onKill += (obj, args) => {
			LogEntry entry = new LogEntry(this, "TrapKill")
				.AddVector3("position", args.position)
				.AddString("victim", args.victim.GetComponent<Loggable>().name);
			logger.Enqueue(entry);
			print("TrapKill!");
		};

		trap.onPlaced += (obj, args) => {
			LogEntry entry = new LogEntry(this, "TrapPlaced")
				.AddVector3("position", args.position);
			logger.Enqueue(entry);
			print("TrapPlaced");
		};

		trap.onPickedUp += (obj, args) => {
			logger.Enqueue(
				new LogEntry(this, "TrapPickedUp")
					.AddVector3("position", args.position)
			);
		};
	}

	protected void Start()
	{
		// Dont start logging routine
	}





	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		entry.AddGameObject(gameObject.name, gameObject);
	}


}