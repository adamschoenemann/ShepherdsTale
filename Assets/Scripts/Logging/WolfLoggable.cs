using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Wolf;

[RequireComponent(typeof(WolfController))]
public class WolfLoggable : Loggable
{

	private Mortal mortal;
	private AttackCollider attacker;
	private WolfController controller;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		controller = GetComponent<WolfController>();
		attacker = controller.GetAttackCollider().GetComponent<AttackCollider>();
		mortal = GetComponent<Mortal>();

		if(attacker == null)
		{
			Debug.Log("Attacker is null!!"); // something is wrong
		}

		attacker.onHit += (obj, args) => {
			LogEntry entry = new LogEntry(this, "WolfHit")
				// .AddInt("damage", args.dmg)
				.AddString("victim", args.victim.GetComponent<Loggable>().name)
				.AddVector3("position", transform.position)
				.AddQuaternion("rotation", transform.rotation);
			logger.Enqueue(entry);
		};

		controller.onStateChangeEvent += (obj, args) => {
			if(args.to == State.Chasing)
			{
				LogEntry entry = new LogEntry(this, "PlayerSeen")
					.AddVector3("playerPosition", GameObject.FindWithTag(Tags.player).transform.position)
					.AddVector3("wolfPosition", transform.position);
				logger.Enqueue(entry);
			}
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