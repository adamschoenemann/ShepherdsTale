using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

/**
 * Handles player movement
 * @type {[type]}
 */
public class PlayerMovement : MonoBehaviour 
{

	public float moveSpeed = 10.0f;
	private float rotX = 0.0f, rotY = 0.0f;

	void Awake()
	{

	}

	public void Move(float ver, float hor)
	{
		Vector3 move = ver * transform.forward + hor * transform.right;
		Vector3 force = move.normalized * moveSpeed * Time.deltaTime * 200;
		rigidbody.AddForce(force);
	}

	public void Rotate(float x, float y)
	{
		x *= 0.02f * 250;
		y *= 0.02f * 120;
		rotX += x;
		// rotY -= y;
		// This camera rotation is still not super hot
		Quaternion rotation = Quaternion.Euler(y, x, 0);
		transform.Rotate(new Vector3(0, x, 0));
	}

	public void RotateToCamera()
	{
		// Transform camTransform = Camera.main.transform;
		// transform.rotation = Quaternion.Euler(0, camTransform.eulerAngles.y, 0);		
	}

	public void FixedUpdate()
	{
		// float ver = Input.GetAxis("Vertical");
		// float hor = Input.GetAxis("Horizontal");
		// if(Input.GetMouseButton(1) == false)
		// {
		// 	Rotate();
		// }
		// Move(ver, hor);

	}

	void Update()
	{

	}

}