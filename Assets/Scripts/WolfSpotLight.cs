using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Light))]
public class WolfSpotLight : MonoBehaviour {

	private WolfController wolf;
	private Light spotLight;

	void Awake()
	{
		wolf = transform.parent.GetComponent<WolfController>();
		spotLight = GetComponent<Light>();
		if(wolf == null)
		{
			print("No wolf found!");
		}

		spotLight.spotAngle = wolf.fieldOfView / 2.0f;
	}




}
