using UnityEngine;
using System.Collections;

public class SharkScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += transform.right*2.0f*Time.deltaTime;
	}
}
