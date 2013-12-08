using UnityEngine;
using System;
using System.Collections;

public class SimonLoggable : Loggable
{

	private SimonManager sm;
	public GameObject qtContainer;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		sm = GetComponent<SimonManager>();


		sm.onLevelCompleted += (obj, args) => {
			LogEntry entry = new LogEntry(this, "SimonLevelComplete");
			EnqueueEntry(entry);
		};

		sm.onPlayerHitRightSheep += (obj, args) => {
			LogSheepHit(args, "SimonSheepHit");
		};

		sm.onPlayerHitWrongSheep += (obj, args) => {
			LogSheepHit(args, "SimonSheepHitWrong");
		};


	}

	private void LogSheepHit(HitSheepEventArgs args, string eventName)
	{
		LogEntry entry = new LogEntry(this, eventName)
			.AddInt("hit", args.hit)
			.AddInt("progress", args.progress)
			.AddInt("level", args.level)
			.AddInt("rightHit", args.rightHit);
		EnqueueEntry(entry);
	}

	private void LogButtonPressEvent(ButtonPressEventArgs args, string evtName)
	{
		print(args.keyCode);
		LogEntry entry = new LogEntry(this, evtName)
			.AddString("keyCode", args.keyCode.ToString())
			.AddFloat("progress", args.progress);
		EnqueueEntry(entry);
	}

	public override bool ShouldLogRoutinely()
	{
		return false;
	}


	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
	}



}