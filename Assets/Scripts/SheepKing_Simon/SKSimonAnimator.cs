using UnityEngine;
using System.Collections;

public class SKSimonAnimator : MonoBehaviour {

	public GameObject simonGameController;
	public Animator sheepKingAnimator;

	private SimonManager gameManager;
	private SimonManager.State state;

	void Start()
	{
		gameManager = simonGameController.GetComponent<SimonManager>();
	}

	void Update()
	{
		switch(gameManager.state)
		{
			case SimonManager.State.WaitToShow:
				if(gameManager.playerMadeMistake)
				{
					// Taunt
					SetAnimState("Taunt");
				}
				// Else be sad
				else
				{
					SetAnimState("Stun");
				}
				break;
			case SimonManager.State.Finished:
				// Be sad
				SetAnimState("Stun");
				break;
			case SimonManager.State.ShowToPlayer:
				// Dance!
				SetAnimState("Dance");
				break;
			case SimonManager.State.ListenToPlayer:
				// Wait
				SetAnimState("Wait");
				break;
			case SimonManager.State.WaitToStart:
				// Wait
				SetAnimState("Wait");
				break;
		}
	}

	private void SetAnimState(string name)
	{
		SetAllAnimControllersToFalse();
		sheepKingAnimator.SetBool(name, true);
	}

	private void SetAllAnimControllersToFalse()
	{
		sheepKingAnimator.SetBool("Taunt", false);
		sheepKingAnimator.SetBool("Dance", false);
		sheepKingAnimator.SetBool("Stun", false);
		sheepKingAnimator.SetBool("Wait", false);
	}

}
