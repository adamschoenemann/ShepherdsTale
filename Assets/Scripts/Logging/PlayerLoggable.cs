using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(PlayerController))]
[RequireComponent(typeof(Mortal))]
public class PlayerLoggable : Loggable
{

	private Staff staff;
	private PlayerController playerCtrl;
	private Mortal mortal;

	protected override void SetupLogging()
	{
		base.SetupLogging();
		staff = GameObject.FindWithTag(Tags.staff).GetComponent<Staff>();
		playerCtrl = GetComponent<PlayerController>();
		mortal = GetComponent<Mortal>();

		staff.onHit += (collision, damage) => {
			LogEntry entry = new LogEntry(this, "StaffHIt");
			entry.AddInt("damage", damage);
			entry.AddString("target_name", collision.gameObject.name);
			entry.AddString("target_tag", collision.gameObject.tag);
			print("Enqueueing StaffHit event");
			logger.Enqueue(entry);
		};

	}





	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		entry.AddGameObject(gameObject.name, gameObject);
	}


}