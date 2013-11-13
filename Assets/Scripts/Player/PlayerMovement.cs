using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

/**
 * Handles player movement
 * @type {[type]}
 */
public class PlayerMovement : NoiseGenerator 
{

	public float runSpeed = 10.0f;
	public float sneakSpeed = 5.0f;
	private float rotX = 0.0f, rotY = 0.0f;

	void Awake()
	{

	}

	public void Run(float ver, float hor)
	{
		Vector3 move = ver * transform.forward + hor * transform.right;
		Vector3 moveNormalized = move.normalized;
		Vector3 force = moveNormalized * runSpeed * 2.5f;
		rigidbody.AddForce(force);
		if(move.magnitude > 0.1)
		{
			MakeNoise(5.0f);
		}
	}

	public void Sneak(float ver, float hor)
	{
		Vector3 move = ver * transform.forward + hor * transform.right;
		Vector3 force = move.normalized * sneakSpeed * 2.5f;
		rigidbody.AddForce(force);
		if(move.magnitude > 0.1)
		{
			MakeNoise(2.5f);
		}
	}

	public void Rotate(float x, float y)
	{
		x *= 0.02f * 250;
		y *= 0.02f * 120;
		rotX += x;
		// rotY -= y;
		// This rotation is still not super hot
		// but at least it works
		Quaternion rotation = Quaternion.Euler(y, x, 0);
		transform.Rotate(new Vector3(0, x, 0));
	}

	public void FixedUpdate()
	{
		// float ver = Input.GetAxis("Vertical");
		// float hor = Input.GetAxis("Horizontal");
		// if(Input.GetMouseButton(1) == false)
		// {
		// 	Rotate();
		// }
		// Run(ver, hor);

	}

	void Update()
	{

	}

}