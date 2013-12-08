using UnityEngine;
using System;
using System.Collections;

public class ShaveLoggable : Loggable
{

	private ShaveManager sm;
	private QTHandler qtHandler;
	public GameObject qtContainer;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		sm = GetComponent<ShaveManager>();
		qtHandler = qtContainer.GetComponent<QTHandler>();

		sm.onUpdateTotalCuts += (obj, args) => {
			LogEntry entry = new LogEntry(this, "UpdateTotalCuts")
				.AddInt("totalCuts", args.totalCuts)
				.AddInt("correctStreak", args.correctStreak)
				.AddInt("woolsToCutOff", args.woolsToCutOff);
			EnqueueEntry(entry);
		};

		sm.onLevelCompleted += (obj, args) => {
			LogEntry entry = new LogEntry(this, "ShaveLevelComplete");
			EnqueueEntry(entry);
		};

		qtHandler.onMissedButtonPress += (obj, args) => {
			LogButtonPressEvent(args, "MissedButton");
		};

		qtHandler.onPressedWrongButton += (obj, args) => {
			LogButtonPressEvent(args, "WrongButton");
		};

		qtHandler.onPressedWhenNoButtonNeeded += (obj, args) => {
			LogButtonPressEvent(args, "NoButtonNeeded");
		};

		qtHandler.onPressedCorrectly += (obj, args) => {
			LogButtonPressEvent(args, "CorrectButton");
		};

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