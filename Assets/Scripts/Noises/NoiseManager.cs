using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class NoiseEventArgs : EventArgs
{
	public readonly Noise noise;
	public NoiseEventArgs(Noise n)
	{
		noise = n;
	}
}

public class NoiseManager : MonoBehaviour
{

	// NoiseQueue is actually obsolete in favor of
	// the event bases system
	// However, it is kept for backwards compatibility
	// with loonie_fight
	private Queue<Noise> noises;
	public EventHandler<NoiseEventArgs> onNoiseReceived;

	void Awake()
	{
		noises = new Queue<Noise>();
	}

	public void AddNoise(Noise noise)
	{
		noises.Enqueue(noise);
		if(onNoiseReceived != null)
			onNoiseReceived(this, new NoiseEventArgs(noise));
	}

	public IEnumerator<Noise> GetEnumerator()
	{
		return noises.GetEnumerator();
	}

	public int GetNoiseCount()
	{
		return noises.Count;
	}

	void LateUpdate()
	{
		noises.Clear();
	}


}