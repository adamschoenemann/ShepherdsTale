using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

	private Quaternion defaultRotation;	
	private Vector3 defaultPosition;

	public float speed = 1.0f;

	void Awake()
	{
		defaultRotation = transform.localRotation;
		defaultPosition = transform.localPosition;
	}

	public void RotateAround(Vector3 center, float angle)
	{
		transform.RotateAround(center, Vector3.up, angle);
	}


	public void ResetRotation(Vector3 center)
	{
		if(transform.localRotation == defaultRotation)
			return;

		float angle = Utils.signedAngle(transform.localRotation, defaultRotation);
		if(Mathf.Abs(angle) > speed * Time.deltaTime + 0.1f) // Create margin from speed variable, in order to avoid thrashing
		{
			RotateAround(center, Mathf.Sign(angle) * speed * Time.deltaTime);
		}
		else
		{
			transform.localRotation = defaultRotation;
			transform.localPosition = defaultPosition;
		}
		
	}


}