using UnityEngine;
using System.Collections;

public class SK_ANIMATOR_DANCE : MonoBehaviour {

	public Animator anim;
	private AnimatorStateInfo currentBaseState;
	
	public GameObject simon_game;
	SimonManager currentState;

	// Use this for initialization
	void Start () {

		anim = GetComponent<Animator>();
		currentState = simon_game.GetComponent<SimonManager>();
	}
	
	// Update is called once per frame
	void Update () {

		print(currentState.state);

		if(currentState.state == SimonManager.State.ShowToPlayer)
		{
			currentState.mistakeBool = false;
			anim.SetBool("DanceBool", true);
			anim.SetBool("TauntBool", false);
		}

		if(currentState.state == SimonManager.State.ListenToPlayer)
		{
			anim.SetBool("DanceBool", false);
		}

		if(currentState.state == SimonManager.State.Finished)
		{
			anim.SetBool("FragileBool", true);
		}

		if(currentState.state == SimonManager.State.WaitToShow && currentState.mistakeBool == true)
		{
			anim.SetBool("TauntBool", true);
		}


	}
}
