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

}