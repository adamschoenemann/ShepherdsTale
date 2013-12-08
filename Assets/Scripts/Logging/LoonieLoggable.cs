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

		controller.onStateChangeEvent += (obj, args) => {
			LogEntry entry = new LogEntry(this, "LoonieStateChange")
				.AddGameObject("loonie", gameObject)
				.AddString("oldState", args.oldState.ToString())
				.AddString("newState", args.newState.ToString());
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
