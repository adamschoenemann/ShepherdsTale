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
	private Mortal mortal;
	private ParticleSystem particles;

	private Quaternion defaultRotation;

	private List<Collectible> collectibles = new List<Collectible>();

	public float rotateSpeed = 200.0f;

	void Awake()
	{
		movement = GetComponent<PlayerMovement>();
		animation = GetComponent<PlayerAnimation>();
		cam = Camera.main.GetComponent<CameraController>();
		defaultRotation = transform.localRotation;

		mortal = GetComponent<Mortal>();
		particles = transform.Find("Particles").GetComponent<ParticleSystem>();

		mortal.onDamageHandler += (self, attacker, dmg) => {
			particles.Play();
			return true;
		};

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
		if(IsSneaking())
		{
			movement.Sneak(ver, hor);
		}
		else
		{
			movement.Run(ver, hor);
		}


	}

	public bool IsSneaking()
	{
		return animation.anim.GetBool("Sneak");
	}

	public bool IsAttacking()
	{
		return animation.IsAttacking();
	}

	public void Collect(Collectible c)
	{
		collectibles.Add(c);
	}

}