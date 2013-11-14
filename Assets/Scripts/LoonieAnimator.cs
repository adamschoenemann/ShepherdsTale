using UnityEngine;
using System.Collections;
using Wolf;

public class LoonieAnimator : MonoBehaviour {
	
	public Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;	
	
	//public static readonly int idleState = Animator.StringToHash("Base Layer.Idle");	
	//public static readonly int locoState = Animator.StringToHash("Base Layer.Run");
	
	LoonieController loonieControl;
	Mortal mortal;
	
	// Use this for initialization
	void Start () 
	{
		anim = GetComponent<Animator>();
		loonieControl= gameObject.GetComponent<LoonieController>();
		mortal = gameObject.GetComponent<Mortal>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		print(anim.GetBool("Walk"));
		print (loonieControl.state);
		
		if(loonieControl.state == State.Alerted)
		{
			anim.SetBool("Run", true);
			//print("run god damn it!");
		}
		
		if(loonieControl.state == State.Suspicious || loonieControl.state == State.Returning)
		{
			anim.SetBool("Run", false);
			//print("run god damn it!");
		}
		
		if(loonieControl.state == State.Returning)
		{
			anim.SetBool("Walk", true);
		}
		
		if(loonieControl.state == State.Idle)
		{
			anim.SetBool("Walk", false);
		}
	}
}
