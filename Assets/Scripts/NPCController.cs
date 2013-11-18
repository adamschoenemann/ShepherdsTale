using UnityEngine;
using StateMachine;

public class NPCController : MonoBehaviour
{

	private StateSpace<NPCState> sp;
	public enum NPCState {Idle, Suspicious, Alerted, Engaging, Attacking, Returning};
	private GameObject player;

	void Awake()
	{
		player = GameObject.FindWithTag(Tags.player);

		sp = new StateSpace<NPCState>(NPCState.Idle);

		sp.AddAction(NPCState.Idle, () => {
			print("Idling... " + gameObject.name);
		});

		sp.AddAction(NPCState.Idle, () => {
			print("Also idling, btw " + gameObject.name);
		});

		sp.AddAction(NPCState.Suspicious, () => {
			print("Suspicious..." + gameObject.GetInstanceID());
		});

		sp.AddTransition(NPCState.Idle, NPCState.Suspicious)
			.When(() => {
				return ((transform.position - player.transform.position).magnitude < 10.0f);
			}).Perform(() => {
				print("Changing state from Idle to Suspicious");
			});

		sp.AddTransition(NPCState.Suspicious, NPCState.Idle)
			.When(() => {
				return ((transform.position - player.transform.position).magnitude >= 10.0f);
			}).Perform(() => {
				print("Changing state from Suspicious to Idle");
			});

		// StateSpace.test(NPCState.Idle);
	}

	void Update()
	{
		sp.Update();
	}

	// private StateMachine sm;
	// private GameObject player;

	// void Awake()
	// {
	// 	sm = new StateMachine();
	// 	player = GameObject.FindWithTag(Tags.player);

	// 	StateMachine.State idleState = new StateMachine.State();
	// 	StateMachine.Action idleAction = new StateMachine.Action();

	// 	idleAction.predicates = () => {
	// 		return true;
	// 	};

	// 	idleAction.callback = () => {
	// 		print("action!");
	// 	};

	// 	idleState.AddAction(idleAction);

	// 	sm.AddState(idleState);

	// }

	// void Update()
	// {
	// 	sm.Update();
	// }

}