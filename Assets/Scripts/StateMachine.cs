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
		public S from {private set; get;}
		public S to {private set; get;}

		public delegate bool WhenCallback();
		private WhenCallback when;

		public delegate void PerformCallback();
		private PerformCallback perform;

		public Transition(S from, S to)
		{
			this.from = from;
			this.to = to;
		}

		public Transition<S> When(WhenCallback cb)
		{
			when = cb;
			return this;
		}

		public Transition<S> Perform(PerformCallback cb)
		{
			perform += cb;
			return this;
		}

		public bool Resolve()
		{
			if(when != null && when() == true)
			{
				if(perform != null)
				{
					perform();
				}
				return true;
			}
			return false;
		}

	}

	public class StateSpace<S> where S : IComparable
	{

		private S currentState;
		private Dictionary<S, List<Action>> actions;
		private Dictionary<S, List<Transition<S>>> transitions;

		public StateSpace(S state)
		{
			currentState = state;
			actions = new Dictionary<S, List<Action>>();
			transitions = new Dictionary<S, List<Transition<S>>>();
		}

		public Action AddAction(S state, Action.Callback cb)
		{
			if(actions.ContainsKey(state) == false)
			{
				actions[state] = new List<Action>();
			}
			Action action = new Action(cb);
			actions[state].Add(action);
			return action;
		}

		public Transition<S> AddTransition(S from, S to)
		{
			if(transitions.ContainsKey(from) == false)
			{
				transitions[from] = new List<Transition<S>>();
			}
			Transition<S> t = new Transition<S>(from, to);
			transitions[from].Add(t);
			return t;
		}

		public Transition<S>[] FindTransitions(S from, S to)
		{
			List<Transition<S>> list = transitions[from];
			return list.FindAll((t) => {
				return t.to.CompareTo(to) == 0;
			}).ToArray();
		}

		public bool RemoveTransition(Transition<S> t)
		{
			List<Transition<S>> list = transitions[t.from];
			return list.Remove(t);
		}

		public void Update()
		{
			foreach(Action action in actions[currentState])
			{
				action.callback();
			}
			foreach(Transition<S> t in transitions[currentState])
			{
				if(t.Resolve() == true)
				{
					currentState = t.to;
				}
			}
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