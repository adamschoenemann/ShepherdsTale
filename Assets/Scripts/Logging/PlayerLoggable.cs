using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(PlayerController))]
public class PlayerLoggable : Loggable
{

	private Staff staff;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		staff = GameObject.FindWithTag(Tags.staff).GetComponent<Staff>();
		staff.onHit += (obj, args) => {
			LogEntry entry = new LogEntry(this, "StaffHIt");
			entry.AddInt("damage", args.damage);
			entry.AddString("target_name", args.collision.gameObject.name);
			entry.AddString("target_tag", args.collision.gameObject.tag);
			print("Enqueueing StaffHit event");
			logger.Enqueue(entry);
		};
	}



	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		entry.AddGameObject(gameObject.name, gameObject);
	}


}