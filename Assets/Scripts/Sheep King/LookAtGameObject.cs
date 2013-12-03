using UnityEngine;
using System.Collections;

public class LookAtGameObject : MonoBehaviour {

	public GameObject target;
	
	// Update is called once per frame
	void Update () {
		if(target != null)
			LookAtLerp(target.transform.position);
	}

	protected virtual void RotateTowards(Quaternion rotation, float margin = 0.99f)
	{
		if(Quaternion.Dot(transform.rotation, rotation) < margin)
		{
			transform.rotation = Quaternion.Lerp(transform.rotation, rotation, 3.0f * Time.deltaTime);
		}
		else if(transform.rotation == rotation)
		{
			return;
		}
		else
		{
			transform.rotation = rotation;
		}
	}

	protected void LookAtLerp(GameObject go)
	{
		LookAtLerp(go.transform.position);
	}

	protected virtual void LookAtLerp(Vector3 lookAt)
	{
		Vector3 direction = (lookAt - transform.position);
		Quaternion targetRotation = Quaternion.LookRotation(direction.normalized);
		RotateTowards(targetRotation);
	}
}
