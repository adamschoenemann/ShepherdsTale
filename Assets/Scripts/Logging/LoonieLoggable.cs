using UnityEngine;
using System.Collections;

public class LoonieLoggable : Loggable
{

	private LoonieController controller;
	private LoonieAttack loonieAttack;
	private GameObject player;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		controller = GetComponent<LoonieController>();
		loonieAttack = GetComponent<LoonieAttack>();
		player = GameObject.FindWithTag(Tags.player);

		controller.onPlayerAudible += (obj, args) => {
			LogEntry entry = new LogEntry(this, "LoonieHeardPlayer")
				.AddGameObject("loonie", gameObject)
				.AddGameObject("player", player);
			EnqueueEntry(entry);
		};

		controller.onPlayerVisible += (obj, args) => {
			LogEntry entry = new LogEntry(this, "LoonieSawPlayer")
				.AddGameObject("loonie", gameObject)
				.AddGameObject("player", player);
			EnqueueEntry(entry);
		};

		loonieAttack.onPlayerCaught += (obj, args) => {
			LogEntry entry = new LogEntry(this, "LoonieCaughtPlayer")
				.AddGameObject("loonie", gameObject)
				.AddGameObject("player", player);
			EnqueueEntry(entry);
		};

	}

	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		
	}	

}
