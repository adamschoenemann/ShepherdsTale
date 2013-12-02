﻿using UnityEngine;
using System.Collections;

public class SimonSheep : MonoBehaviour {

	// Inspector components
	public new AudioSource audio;
	public float lightDuration = 0.5f;
	public Color lightColor;
	public Material playingMaterial;
	public Material defaultMaterial;

	private bool isHit = false;
	private PlayerAnimation playerAnim;
	private GameObject lightObj;
	private Timer lightTimer;
	private Timer collisionCooldown;
	private static readonly float collisionCooldownTime = 1.5f;

	void Start()
	{
		playerAnim = GameObject.FindGameObjectWithTag(Tags.player).GetComponent<PlayerAnimation>();
		renderer.material = defaultMaterial;
	}
	
	void Update () {
		if(lightTimer != null)
		{
			if(lightTimer.IsDone())
			{
				lightTimer = null;
				DeactivateLight();
			}
			else
			{
				lightTimer.TickSeconds(Time.deltaTime);
			}
		}

		if(collisionCooldown != null)
		{
			if(collisionCooldown.IsDone())
			{
				collisionCooldown = null;
			}
			else
			{
				collisionCooldown.TickSeconds(Time.deltaTime);
			}
		}
	}

	public void SetSound(AudioSource audio)
	{
		this.audio = audio;
	}

	public void Activate()
	{
		PlaySound();
		ActivateLight(lightDuration);
	}

	private void PlaySound()
	{
		if(!audio.isPlaying)
		{
			audio.Play();
		}
	}

	private void ActivateLight(float duration)
	{
		renderer.material  = playingMaterial;
		renderer.material.SetColor("_Color", lightColor);
		lightTimer = new Timer(duration);
	}

	private void DeactivateLight()
	{
		renderer.material = defaultMaterial;
	}

	void OnCollisionStay(Collision collision) 
	{
		if(collisionCooldown == null && collision.gameObject.tag == Tags.staff && playerAnim.IsAttacking())
		{
			isHit = true;
			collisionCooldown = new Timer(collisionCooldownTime);
		}

	}

	public bool IsHit()
	{
		bool val = isHit;
		isHit = false; // Reset isHit flag
		return val;
	}

}
