using UnityEngine;

public class Utils
{

	public static Vector3 ProjectToPlane(Vector3 v, Vector3 n)
	{
		return v - Vector3.Dot(v, n) * n;
	}

	public static float ClampAngle (float angle, float min, float max) {
		if (angle < -360)
			angle += 360;
		if (angle > 360)
			angle -= 360;
		return Mathf.Clamp (angle, min, max);
	}

	public static float signedAngle(Quaternion a, Quaternion b)
	{
		// Get a forward vector for each rotation
		Vector3 forwardA = a * Vector3.forward;
		Vector3 forwardB = b * Vector3.forward;

		// get a numeric angle for each vector, on the X-Z plane (relative to world forward)
		float angleA = Mathf.Atan2(forwardA.x, forwardA.z) * Mathf.Rad2Deg;
		float angleB = Mathf.Atan2(forwardB.x, forwardB.z) * Mathf.Rad2Deg;

		// get the signed difference in these angles
		float angleDiff = Mathf.DeltaAngle(angleA, angleB);
		return angleDiff;
	}

	public static Vector3 FindClearPathDirection
	(Vector3 origin, Vector3 target, string[] permitTags = null)
	{
		Debug.Log("FindClearPathDirection");
		Vector3 between = (target - origin);
		Vector3 direction = between.normalized;
		float thresh = between.magnitude;

		int retries = 10;
		float maxAngle = 360.0f;
		RaycastHit hit;
		for(int i = 1; i < retries; i++)
		{
			for(int j = -1; j <= 1; j += 2)
			{
				float angle = ((maxAngle / retries) * i) * j;
				Vector3 newDirection = Quaternion.AngleAxis(angle, Vector3.up) * direction;
				if(Physics.Raycast(origin, newDirection, out hit, thresh))
				{
					if(permitTags == null)
						return newDirection;

					if(ArrayContains(permitTags, hit.collider.gameObject.tag) == false)
					{
						return newDirection;
					}
				}
			}
		}
		return direction;
	}

	public static bool ArrayContains<T>(T[] arr, T elem)
	{
		for(int i = 0; i < arr.Length; i++)	
		{
			if(arr[i].Equals(elem))
				return true;
		}
		return false;
	}

}