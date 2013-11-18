using UnityEngine;
using StateMachine;

public class NPCController : MonoBehaviour
{

	private StateSpace sp;
	public enum NPCState {Idle, Suspicous, Alerted, Engaging, Attacking, Returning};
	private GameObject player;

	void Awake()
	{
		player = GameObject.FindWithTag(Tags.player);

		sp = new StateSpace<NPCState>(NPCState.Idle);

		sp.AddAction(NPCState.Idle, () => {
			print("Idling..." + gameObject.name);
		})

		sp.AddAction(NPCState.Suspicous, () => {
			print("Suspicous..." + gameObject.GetInstanceID());
		});

		sp.AddTransition(NPCState.Idle, NPCState.Suspicous)
			.when(() => {
				return ((transform.position - player.transform.position).magnitude < 10.0f);
			}).perform(() => {
				print("Changing state from Idle to Suspicous");
			});

		sp.AddTransition(NPCState.Suspicious, NPCState.Idle)
			.when(() => {
				return ((transform.position - player.transform.position).magnitude >= 10.0f);
			}).perform(() => {
				print("Changing state from Suspicous to Idle");
			})

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