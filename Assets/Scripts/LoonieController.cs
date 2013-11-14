using UnityEngine;
using System.Collections;

public class LoonieController : WolfController {
	
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
			state = Wolf.State.Alerted;
			
		}
	}
	
	void Update()
	{
		if(state	
	}
	
}
