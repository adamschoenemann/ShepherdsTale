using UnityEngine;
using System.Collections;

public class LightItensity : MonoBehaviour {

	Timer timer;
	bool lightIncrease;

	// Use this for initialization
	void Start () {
		timer = new Timer(20000);
	}
	
	public float duration = 1.0F;

	void Update() {
		timer.TickSeconds (Time.deltaTime);

		/*
		float phi = Time.time / duration * 2 * Mathf.PI;
		float amplitude = Mathf.Cos(phi) * 0.5F + 0.5F;
		light.intensity = amplitude;
		*/

		if(lightIncrease == true && light.intensity < 8.0f)
		{
			light.intensity += 1.5f*Time.deltaTime; 
		}

		if(timer.IsDone ())
		{
			print ("NU");
			lightIncrease = true;

		}


	}
}
