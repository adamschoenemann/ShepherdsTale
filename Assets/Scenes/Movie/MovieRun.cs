using UnityEngine;
using System.Collections;

public class MovieRun : MonoBehaviour {

	public Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
		currentBaseState = anim.GetCurrentAnimatorStateInfo(0);
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "MovieBox")
			anim.SetBool("stopBool", true);
	}
}
