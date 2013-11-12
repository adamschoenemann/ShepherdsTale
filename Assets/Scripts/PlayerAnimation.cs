using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

/**
 * Handles player animations
 * @type {[type]}
 */
public class PlayerAnimation : MonoBehaviour
{

	public Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;			// a reference to the current state of the anima
	private AnimatorStateInfo layer2State;
	private AnimatorStateInfo layer2CurrentState;	// a reference to the current state of the animator, used for layer 2
	private CapsuleCollider col;					// a reference to the capsule collider of the character
	public float animSpeed = 1.5f;				// a public setting for overall animator animation speed

	public static readonly int idleState = Animator.StringToHash("Base Layer.Idle");	
	public static readonly int locoState = Animator.StringToHash("Base Layer.Locomotion");			// these integers are references to our animator's states
	public static readonly int jumpState = Animator.StringToHash("Base Layer.Jump");				// and are used to check state for various actions to occur
	public static readonly int jumpDownState = Animator.StringToHash("Base Layer.JumpDown");		// within our FixedUpdate() function below
	public static readonly int fallState = Animator.StringToHash("Base Layer.Fall");
	public static readonly int rollState = Animator.StringToHash("Base Layer.Roll");
	public static readonly int inAirState = Animator.StringToHash("Base Layer.InAir");
	public static readonly int sneakState = Animator.StringToHash("Base Layer.SneakRight");
	
	// Right now THESE TWO ARE NOT USED
	// Instead, we use the attack states on layer2
	private int preAttackState = Animator.StringToHash("Base Layer.Pre-Attack");
	private int attackState = Animator.StringToHash("Base Layer.Attack");
	
	private int preAttackRunState = Animator.StringToHash("Layer2.Pre-Attack");
	private int attackRunState = Animator.StringToHash("Layer2.Attack");

	void Start()
	{
		anim = GetComponent<Animator>();					  
		col = GetComponent<CapsuleCollider>();				
		if(anim.layerCount == 2)
		{
			anim.SetLayerWeight(1, 1);
		}
		anim.speed = animSpeed;
	}

	void Update()
	{
		
	}

	public void FixedUpdate()
	{
		float h = Input.GetAxis("Horizontal");
		float v = Input.GetAxis("Vertical");
		
		AnimateMovement(v, h);
		AnimateSneaking();
		AnimateAttack();
	}

	void AnimateSneaking()
	{
		// Minimize aggro range if we hold down SHIFT (same as sneaky key) Still need some tweaking, 
		//you can "escape" the wolf from a closer distance by hitting the shift key!
		if(Input.GetButtonDown("Sneak"))
		{
			anim.SetBool("Sneak", true);
			// SetSneaking(true);
		}
		if(Input.GetButtonUp("Sneak"))
		{
			anim.SetBool("Sneak", false);
			// SetSneaking(false);
		}
	}

	void AnimateMovement(float v, float h)
	{
		if(h != 0 || v != 0)
		{
			anim.SetFloat("Speed", (v == 0) ? Mathf.Abs(h) : v);
			anim.SetFloat("Direction", h);
		}

		currentBaseState = anim.GetCurrentAnimatorStateInfo(0);	// set our currentState variable to the current state of the Base Layer (0) of animation
		layer2State = anim.GetCurrentAnimatorStateInfo(1);
	}

	void AnimateAttack()
	{
		if(layer2State.nameHash != attackRunState)
		{
			if(Input.GetButtonDown("Fire1"))
			{
				print("attack!");
				anim.SetBool("Attack", true);
			}
		}
		else if(layer2State.nameHash == attackRunState
				 && anim.IsInTransition(1) == false)
		{
			anim.SetBool("Attack", false);
		}

	}

	public bool IsAttacking()
	{
		return (layer2State.nameHash == attackRunState);
	}

}