using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class NoiseManager : MonoBehaviour
{

	private Queue<Noise> noises;

	void Awake()
	{
		noises = new Queue<Noise>();
	}

	public void AddNoise(Noise noise)
	{
		noises.Enqueue(noise);
	}

	public IEnumerator<Noise> GetEnumerator()
	{
		return noises.GetEnumerator();
	}

	void LateUpdate()
	{
		noises.Clear();
	}


}