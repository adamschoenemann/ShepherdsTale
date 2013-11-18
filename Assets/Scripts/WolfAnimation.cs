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
		switch(wolfState)
		{
			case State.Attacking:
				anim.SetBool("running", false);
				anim.SetBool("walking", false);
				anim.SetBool("attacking", true);
				break;
			case State.Idle:
				anim.SetBool("running", false);
				anim.SetBool("walking", false);
				anim.SetBool("attacking", false);
				break;

			case State.Alerted:
			case State.Returning:
				anim.SetBool("walking", false);
				anim.SetBool("attacking", false);
				anim.SetBool("running", true);
				break;
		}
	}

}