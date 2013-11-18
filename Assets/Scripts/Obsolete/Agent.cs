using UnityEngine;
using FiniteStateMachine;

namespace AI
{
	/**
	 * At this moment, it is used for testing {@link(FiniteStateMachine)}
	 * @type {[type]}
	 */
	public class Agent : MonoBehaviour
	{

		private StateMachine<Agent> fsm;

		private class IdleState : State<Agent>
		{
			public IdleState() : base(0)
			{

			}

			public override State<Agent> Execute(Agent agent)
			{
				print("Execute");
				agent.SayName();
				return new IdleState();
			}

			public void DoSomething()
			{
				Debug.Log("Something...");
			}
		}

		void Awake()
		{
			fsm = new StateMachine<Agent>(new IdleState());
		}

		void Update()
		{
			fsm.Update(this);
		}

		public void SayName()
		{
			print("name: " + gameObject.name);
		}

	}

}