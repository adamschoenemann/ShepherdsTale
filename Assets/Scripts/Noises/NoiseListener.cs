using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class NoiseListener : MonoBehaviour
{

	private Queue<Noise> noises = new Queue<Noise>();

	protected virtual void Awake()
	{
		NoiseManager nm = GameObject.FindWithTag(Tags.gameController)
			.GetComponent<NoiseManager>();
		nm.onNoiseReceived += OnNoiseHeard;
	}

	public virtual void OnNoiseHeard(object obj, NoiseEventArgs args)
	{
		noises.Enqueue(args.noise);
	}

	protected Noise[] GetNoises()
	{
		Noise[] arr = new Noise[noises.Count];
		noises.CopyTo(arr, 0);
		ClearNoises();
		return arr;
	}

	protected void ClearNoises()
	{
		noises.Clear();
	}


}
