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

	void Awake()
	{
		movement = GetComponent<PlayerMovement>();
		animation = GetComponent<PlayerAnimation>();
		cam = Camera.main.GetComponent<CameraController>();
	}

	void FixedUpdate()
	{
		float ver = Input.GetAxis("Vertical");
		float hor = Input.GetAxis("Horizontal");

		
		movement.Move(ver, hor);
	}

	void LateUpdate()
	{
		movement.Rotate(Input.GetAxis("Mouse X"), Input.GetAxis("Mouse Y"));
	}

}