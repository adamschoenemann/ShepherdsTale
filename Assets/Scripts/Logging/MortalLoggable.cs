using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(Mortal))]
public class MortalLoggable : Loggable
{

	private Mortal mortal;



	protected override void SetupLogging()
	{
		base.SetupLogging();
		mortal = GetComponent<Mortal>();
		mortal.onDamageEvent += (obj, args) => {
			LogEntry entry = new LogEntry(this, "OnDamage")
				.AddInt("damage", args.damage)
				.AddInt("startHealth", args.mortal.startHealth)
				.AddInt("health", args.mortal.health)
				.AddGameObject("victim", args.victim)
				.AddGameObject("attacker", args.attacker);
			logger.Enqueue(entry);
		};

		mortal.onDeathHandler += (m, killer) => {
			LogEntry entry = new LogEntry(this, "OnDeath")
				.AddInt("startHealth", m.startHealth)
				.AddGameObject("victim", gameObject)
				.AddGameObject("killer", killer);
			logger.Enqueue(entry);
		};
	}


	public override bool ShouldLogRoutinely()
	{
		return false;
	}


	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		// entry.AddGameObject(gameObject.name, gameObject);
	}


}