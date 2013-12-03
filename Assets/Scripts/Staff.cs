using UnityEngine;
using System;

public class StaffEventArgs : EventArgs
{
	public Collision collision;
	public int damage;
	public StaffEventArgs(Collision c, int d)
	{
		collision = c;
		damage = d;
	}
}

public class Staff : MonoBehaviour
{

	private GameObject player;
	private PlayerController playerController;

	public event EventHandler<StaffEventArgs> onHit;

	void Awake()
	{
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();
	}

	void OnCollisionEnter(Collision collision)
	{
		if(playerController.IsAttacking() == false)
			return;
		
		GameObject obj = collision.gameObject;
		if(obj == null)
			return;

		Mortal mortal = obj.GetComponent<Mortal>();
		if(mortal == null)
			return;

		int dmg = mortal.Damage(1);
		if(onHit != null)
		{
			onHit(this, new StaffEventArgs(collision, dmg));
		}

	}
}