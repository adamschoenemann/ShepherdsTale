using UnityEngine;
using System.Collections.Generic;

/**
 * This state machine facilitates ad-hoc creation of states (or it should, eventually)
 * Right now, it relies heavily on lamda predicates, which is OK, but could be done.
 * Oh, and it can't update its state.
 * Still needs much work, but interesting nonetheless.
 */
public class StateMachine
{

	public class Action
	{

		public delegate bool Predicate();
		public Predicate predicates;

		public delegate void Callback();
		public Callback callback;

		public virtual bool IsApplicable()
		{
			return predicates();
		}

		public virtual void Apply()
		{
			callback();
		}

	}

	public class State
	{

		private List<Action> actions;

		public State()
		{
			actions = new List<Action>();
		}

		public void AddAction(Action action)
		{
			actions.Add(action);
		}

		public void Execute()
		{
			foreach(Action action in actions)
			{
				if(action.IsApplicable())
				{
					action.Apply();
					return;
				}
			}
		}

	}

	private List<State> states;
	private State currentState;

	public StateMachine()
	{
		states = new List<State>();
	}

	public void AddState(State state)
	{
		currentState = state;
		states.Add(state);
	}

	public void Update()
	{
		currentState.Execute();
	}

}