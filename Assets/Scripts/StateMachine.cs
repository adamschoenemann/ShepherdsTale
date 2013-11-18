using UnityEngine;
using System;
using System.Collections.Generic;

/**
 * Still trying!
 * This approach might be elegant
 * But a more state-class oriented approach (see below)
 * might also work
 */
namespace StateMachine
{

	public class Action
	{
		public delegate void Callback();
		public Callback callback;

		public Action(Callback cb)
		{
			callback = cb;
		}
	}

	public class Transition<S>
	{
		private S from, to;

	}

	public class StateSpace<S>
	{

		private S currentState;
		private Dictionary<S, List<Action>> actions;

		public StateSpace(S state)
		{
			currentState = state;
			actions = new Dictionary<S, List<Action>>();
		}

		public Action AddAction(S state, Action.Callback cb)
		{
			if(actions.ContainsKey(S) == false)
			{
				actions[S] = new List<Action>();
			}
			actions[S].Add(new Action(cb));
		}

		public Transition AddTransition(S from, S to)
		{

		}
		
	}


}


/*
/**
 * This state machine facilitates ad-hoc creation of states (or it should, eventually)
 * Right now, it relies heavily on lamda predicates, which is OK, but could be done more elegantly.
 * Oh, and it can't update its state.
 * Still needs much work, but interesting nonetheless.

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
*/