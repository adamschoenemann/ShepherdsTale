using UnityEngine;
public class NoiseGenerator : MonoBehaviour
{

	public void MakeNoise(float intensity)
	{
		Noise noise = new Noise(gameObject, transform.position, intensity);
		NoiseManager nm = GameObject.FindWithTag(Tags.gameController).GetComponent<NoiseManager>();
		nm.AddNoise(noise);
	}

}