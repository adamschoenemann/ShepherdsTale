using UnityEngine;

public class NPCController : MonoBehaviour
{

	private StateMachine sm;
	private GameObject player;

	void Awake()
	{
		sm = new StateMachine();
		player = GameObject.FindWithTag(Tags.player);

		StateMachine.State idleState = new StateMachine.State();
		StateMachine.Action idleAction = new StateMachine.Action();

		idleAction.predicates = () => {
			return true;
		};

		idleAction.callback = () => {
			print("action!");
		};

		idleState.AddAction(idleAction);

		sm.AddState(idleState);

	}

	void Update()
	{
		sm.Update();
	}

}