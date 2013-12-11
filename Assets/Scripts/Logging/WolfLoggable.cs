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

	private GameObject player;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		controller = GetComponent<WolfController>();
		attacker = controller.GetAttackCollider().GetComponent<AttackCollider>();
		mortal = GetComponent<Mortal>();
		player = GameObject.FindWithTag(Tags.player);

		if(attacker == null)
		{
			Debug.Log("Attacker is null!!"); // something is wrong
		}

		controller.onStateChangeEvent += (obj, args) => {
			if(args.to == State.Suspicious)
			{
				LogEntry entry = new LogEntry(this, "WolfSuspicious")
					.AddGameObject("player", player)
					.AddGameObject("wolf", gameObject);
					EnqueueEntry(entry);
			}
			else if(args.to == State.Chasing)
			{
				LogEntry entry = new LogEntry(this, "WolfAlerted")
					.AddGameObject("player", player)
					.AddGameObject("wolf", gameObject);
				EnqueueEntry(entry);
			}
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