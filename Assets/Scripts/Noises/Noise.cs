using UnityEngine;
public class Noise
{

	public readonly Vector3 position;
	public readonly float intensity;
	public readonly GameObject origin;

	public Noise(GameObject origin, Vector3 position, float intensity)
	{
		this.origin = origin;
		this.position = position;
		this.intensity = intensity;
	}

}