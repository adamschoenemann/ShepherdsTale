using UnityEngine;

namespace FiniteStateMachine {

	/**
	 *  This state machine facilities compile-time creation of states through
	 *  subclassing and generics. It is quite type-safe which is nice, but slightly bulky
	 *  And not that easily moddable/extensible, but it could be alleviated.
	 */
	

	public class State<T>
	{

		private readonly int val;

		public State(int val)
		{
			this.val = val;
		}

		public static bool operator == (State<T> s1, State<T> s2)
		{
			return (s1.val == s2.val);
		}

		public static bool operator != (State<T> s1, State<T> s2)
		{
			return (s1.val != s2.val);
		}

		public virtual void Enter(State<T> fromState)
		{

		}

		public virtual void Exit(State<T> toState)
		{

		}

		public virtual State<T> Execute(T agent)
		{
			return this;
		}

	}

	public class StateMachine<T>
	{

		private State<T> currentState;
		public State<T> state
		{
			get
			{
				return currentState;
			}
			protected set
			{
				if(currentState != value)
				{
					OnStateChange(currentState, value);
					currentState = value;
				}
			}
		}

		public StateMachine(State<T> startState)
		{
			currentState = startState;
		}

		public virtual void Update(T caller)
		{
			state = state.Execute(caller);
		}

		protected virtual void OnStateChange(State<T> oldState, State<T> newState)
		{
			oldState.Exit(newState);
			newState.Enter(oldState);
		}

	}

}