using UnityEngine;
using System;
using System.Collections;
using Wolf;

public class LoonieController : LoonieBaseController {

	public event EventHandler onPlayerAudible;
  	public event EventHandler onPlayerVisible;
	
	protected override void Awake()
	{
		base.Awake();
		mortal.onDamageHandler = OnDamage;
		mortal.onDeathHandler = OnLoonieDeath;		
	}
	
	bool OnDamage(Mortal mortal, GameObject attacker, int damage)
	{
		return true;
		Vector3 playerPos = player.transform.position;
		Vector3 direction = playerPos - transform.position;
		if(Vector3.Dot(direction.normalized, transform.forward) < 0.0f)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	void OnLoonieDeath(Mortal mortal, GameObject obj)
	{
		Application.LoadLevel("loonie_finish");
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
		if(onPlayerAudible != null)
			onPlayerAudible(this, EventArgs.Empty);
		return result;
	}

	protected override bool IsPlayerVisible()
	{
		bool result = base.IsPlayerVisible();
		if(result && onPlayerVisible != null)
			onPlayerVisible(this, EventArgs.Empty);
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
