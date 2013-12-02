using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class SK_ANIMATOR : MonoBehaviour {

	public Animator anim;
	private AnimatorStateInfo currentBaseState;	
	
	public static readonly int runState = Animator.StringToHash("Base Layer.Run");
	public static readonly int ramState = Animator.StringToHash("Base Layer.Ram");
	public static readonly int idleState = Animator.StringToHash("Base Layer.Idle");
	public static readonly int fragileState = Animator.StringToHash("Base Layer.Fragile");

	SK_KillScript killScript;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();
		killScript = GetComponent<SK_KillScript>();
	}
	
	// Update is called once per frame
	void Update () {
		//print(killScript.state);
		//print (currentBaseState.nameHash);
	}

	public void FixedUpdate()
	{

		switch(killScript.state)
		{
			case SK_KillScript.States.aim:
				anim.SetBool("Aim", true);
				anim.SetBool("Ram", false);
				anim.SetBool("Stun", false);
				break;
			case SK_KillScript.States.run:
				anim.SetBool("Aim", false);
				anim.SetBool("Ram", true);
				anim.SetBool("Stun", false);
				break;
			case SK_KillScript.States.stun:
				anim.SetBool("Aim", false);
				anim.SetBool("Ram", false);
				anim.SetBool("Stun", true);
				break;
		}
/*

		currentBaseState = anim.GetCurrentAnimatorStateInfo(0);
		//run ();

		if(currentBaseState.nameHash == idleState)
		{
			anim.SetBool("FragileBool", false);
		}*/
	}
	
	void run()
	{
		// PRE RAM ANIMATION
		if(killScript.state == SK_KillScript.States.aim)
		{
			anim.SetBool("FragileBool", false);
			anim.SetBool("PreRunBool", true);
		}

		// RAM ANIMATION
		if(killScript.state == SK_KillScript.States.run)
		{
			anim.SetBool("PreRunBool", false);
			anim.SetBool("RunBool", true);
		}
		if(killScript.state == SK_KillScript.States.aim)
		{
			anim.SetBool("RunBool", false);
		}

		// FRAGILE ANIMATION
		if(killScript.state == SK_KillScript.States.stun)
		{
			anim.SetBool("FragileBool", true);
		}
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.gameObject.tag == "Wall")
		{
			print ("Hej væg");
			anim.SetBool("FragileBool", true);
		}
	}
}
