using UnityEngine;
using System.Collections;
using Wolf;

public class LoonieController : WolfController {
	
	protected override void Awake()
	{
		base.Awake();
		mortal.onDamageHandler = OnDamage;		
	}
	
	bool OnDamage(Mortal mortal, int damage)
	{
		Vector3 playerPos = player.transform.position;
		Vector3 direction = playerPos - transform.position;
		if(Vector3.Dot(playerPos.normalized, transform.forward) < 0)
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	
	protected override bool IsPlayerAudible()
	{
		bool result = base.IsPlayerAudible();
		if(result)
		{
			if(playerController.IsSneaking())
			{
				return false;
			}
		}
		return result;
	}
	
	void OnCollisionEnter(Collision other)
	{
		GameObject player 	= GameObject.FindGameObjectWithTag("Player");
		GameObject staff	= GameObject.FindGameObjectWithTag("Staff");
		if(other.gameObject == player || other.gameObject == staff)
		{
			state = State.Alerted;
		}
	}
	
	
}
