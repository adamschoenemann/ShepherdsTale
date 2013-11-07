using UnityEngine;
using System.Collections;

public class SpotAngleScript : MonoBehaviour {
	
	private GameObject wolf;
	private Enemy wolfAcces;
	
	// Use this for initialization
	void Start () {
		wolf = GameObject.FindGameObjectWithTag("Enemy");
		wolfAcces = wolf.GetComponent<Enemy>();
		light.spotAngle = wolfAcces.fieldOfView;
	}
	
	// Update is called once per frame
	void Update () {
		//Debug.Log(wolfAcces.fieldOfView);
	}
}
