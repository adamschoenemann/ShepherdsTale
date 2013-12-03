using UnityEngine;
using System.Collections;

public class LeapColorScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	public Color lerpedColor = Color.white;
	void Update() {
		lerpedColor = Color.Lerp(Color.white, Color.black, Time.time);
	}
}
