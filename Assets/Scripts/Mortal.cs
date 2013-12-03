using UnityEngine;
public class Mortal : MonoBehaviour
{

	public int health = 5;
	public int invincibleTime = 500;

	public delegate void OnDeathDelegate(Mortal instance);
	public delegate bool OnDamageDelegate(Mortal instance, int damage);

	public OnDeathDelegate onDeathHandler;
	public OnDamageDelegate onDamageHandler;

	private Timer invincibleTimer;

	public int GetHealth()
	{
		return health;
	}

	public int Damage(int amount)
	{	
		if(invincibleTimer != null && invincibleTimer.IsDone() == false)
		{
			print("hit, but invincible");
			return health;
		}
		if(onDamageHandler != null)
		{
			if(onDamageHandler(this, amount) == false)
			{
				return health;
			}
		}
	
		health -= amount;
		audio.Play();
		print(health + " AV");
		invincibleTimer = new Timer(invincibleTime);
		print("Taking " + amount + " in damage");
		if(IsAlive() == false)
		{
			Die();
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

	public void Die()
	{
		if(onDeathHandler != null)
		{
			onDeathHandler(this);
		}
		print("Died");
	}

	public bool IsAlive()
	{
		return (health > 0);
	}

}