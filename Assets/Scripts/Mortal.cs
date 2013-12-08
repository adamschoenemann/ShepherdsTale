using UnityEngine;
using System;

public class DamageEventArgs : EventArgs
{
	public readonly GameObject attacker, victim;
	public readonly int damage;
	public readonly Mortal mortal;
	public DamageEventArgs(Mortal m, GameObject v, GameObject a, int d)
	{
		mortal = m;
		victim = v;
		attacker = a;
		damage = d;
	}
}

public class Mortal : MonoBehaviour
{

	public int startHealth {private set; get;}
	public int health = 5;
	public int invincibleTime = 500;

	public delegate void OnDeathDelegate(Mortal instance, GameObject attacker);
	public delegate bool OnDamageDelegate(Mortal instance, GameObject attacker, int damage);

	public OnDeathDelegate onDeathHandler;
	public OnDamageDelegate onDamageHandler;

	public event EventHandler<DamageEventArgs> onDamageEvent;

	private Timer invincibleTimer;

	void Start()
	{
		startHealth = health;
	}

	public int GetHealth()
	{
		return health;
	}

	public void AddHealth(int h)
	{
		health += h;
		if(health > startHealth)
		{
			health = startHealth;
		}
	}

	public int Damage(int amount, GameObject attacker)
	{	
		if(invincibleTimer != null && invincibleTimer.IsDone() == false)
		{
			print("hit, but invincible");
			return health;
		}
		if(onDamageHandler != null)
		{
			if(onDamageHandler(this, attacker, amount) == false)
				return health;
		}
		health -= amount;
		if(onDamageEvent != null)
			onDamageEvent(this, new DamageEventArgs(this, gameObject, attacker, amount));
		invincibleTimer = new Timer(invincibleTime);
		print("Taking " + amount + " in damage");
		if(IsAlive() == false)
		{
			Die(attacker);
		}
		return health;
	}

	void Update()
	{
		if(invincibleTimer != null && invincibleTimer.IsDone() == false)
		{
			invincibleTimer.TickSeconds(Time.deltaTime);
		}
	}

	public void Die(GameObject attacker)
	{
		if(onDeathHandler != null)
		{
			onDeathHandler(this, attacker);
		}
		print("Died");
	}

	public bool IsAlive()
	{
		return (health > 0);
	}

}