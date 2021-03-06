using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

[RequireComponent(typeof (PlayerMovement))]
[RequireComponent(typeof (PlayerAnimation))]

public class PlayerController : MonoBehaviour
{

	private PlayerMovement movement;
	private PlayerAnimation animation;
	private CameraController cam;

	private Quaternion defaultRotation;

	public float rotateSpeed = 200.0f;

	void Awake()
	{
		movement = GetComponent<PlayerMovement>();
		animation = GetComponent<PlayerAnimation>();
		cam = Camera.main.GetComponent<CameraController>();
		defaultRotation = transform.localRotation;

		Screen.showCursor = false;
	}

	void FixedUpdate()
	{
		float ver = Input.GetAxis("Vertical");
		float hor = Input.GetAxis("Horizontal");
		
		float dx = Input.GetAxis("Mouse X");
		float dy = Input.GetAxis("Mouse Y");

		if(Input.GetMouseButton(1))
		{
			cam.RotateAround(transform.position, dx * rotateSpeed * Time.deltaTime);
		}
		else
		{
			cam.ResetRotation(transform.position);
			movement.Rotate(dx, dy);
		}
		movement.Move(ver, hor);


	}

	void LateUpdate()
	{
	}

}