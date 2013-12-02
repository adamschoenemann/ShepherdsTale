using UnityEngine;
using System.Collections;

public class FaceCamera : MonoBehaviour {

	protected GameObject cam;

	// Use this for initialization
	protected virtual void Start () {
		cam = GameObject.FindGameObjectWithTag(Tags.mainCamera);
	}
	
	// Update is called once per frame
	void Update () {
		transform.forward = (transform.position - cam.transform.position).normalized;
	}

}
