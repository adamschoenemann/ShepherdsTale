using UnityEngine;
using Wolf;

[RequireComponent(typeof (WolfController))]
public class WolfAnimation : MonoBehaviour
{

	private WolfController controller;
	private Animator anim;

	void Awake()
	{
		controller = GetComponent<WolfController>();
		anim = GetComponent<Animator>();
	}

	void LateUpdate()
	{
		State wolfState = controller.state;
		AnimatorStateInfo animState = anim.GetCurrentAnimatorStateInfo(0);
		UpdateAnimation(wolfState, animState);
	}

	void UpdateAnimation(State wolfState, AnimatorStateInfo animState)
	{
		ResetAnimationState();
		switch(wolfState)
		{
			case State.Attacking:
				anim.SetBool("attacking", true);
				break;

			case State.Idle:
				break;

			case State.Chasing:
			case State.Alerted:
			case State.Returning:
				anim.SetBool("running", true);
				break;

			case State.Patrolling:
				anim.SetBool("walking", true) ;
				break;
		}
	}

	private void ResetAnimationState()
	{
		string[] keys = {
			"running",
			"walking",
			"attacking"
		};

		foreach(string key in keys)
		{
			anim.SetBool(key, false);
		}
	}

	public void OnStateChange(State oldState, State newState)
	{
		// if(newState == State.Attacking)
		// {
		// 	anim.SetBool("attacking", true);
		// 	print("attacking true");
		// }
		// else if(newState == State.Engaging)
		// {
		// 	anim.SetBool("running", false);
		// 	anim.SetBool("walking", false);
		// }
		// else if(newState == State.Idle)
		// {
		// 	anim.SetBool("running", false);
		// 	anim.SetBool("walking", false);
		// }
		// else if(newState == State.Patrolling)
		// {
		// 	anim.SetBool("walking", true);
		// }
		// else if(newState == State.Chasing)
		// {
		// 	anim.SetBool("running", true);
		// }
		// else if(newState == State.Returning)
		// {
		// 	anim.SetBool("running", true);
		// }

		// if(oldState == State.Attacking)
		// {
		// 	anim.SetBool("attacking", false);
		// 	print("attacking false");
		// }
		// else if(oldState == State.Patrolling)
		// {
		// 	anim.SetBool("walking", false);
		// }
		// else if(oldState == State.Chasing)
		// {
		// 	// anim.SetBool("running", false);
		// }
		// else if(oldState == State.Returning)
		// {
		// 	anim.SetBool("running", false);
		// }
	}

}