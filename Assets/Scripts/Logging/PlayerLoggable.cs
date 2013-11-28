using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(PlayerController))]
public class PlayerLoggable : Loggable
{

	private Staff staff;

	void Awake()
	{
		base.Awake();
		staff = GameObject.FindWithTag(Tags.staff).GetComponent<Staff>();
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