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
		mortal.onDamageHandler += (m, attacker, dmg) => {
			LogEntry entry = new LogEntry(this, "OnDamage")
				.AddInt("damage", dmg)
				.AddInt("startHealth", m.startHealth)
				.AddInt("health", m.health)
				.AddGameObject("victim", gameObject)
				.AddGameObject("attacker", attacker);
			logger.Enqueue(entry);
			return true;
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