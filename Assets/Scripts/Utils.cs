using UnityEngine;

public class Utils
{

	public static Vector3 ProjectToPlane(Vector3 v, Vector3 n)
	{
		return v - Vector3.Dot(v, n) * n;
	}
}