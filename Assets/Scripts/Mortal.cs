using UnityEngine;
public class Mortal : MonoBehaviour
{

	public int health = 5;

	public delegate void OnDeathDelegate(Mortal instance);
	public delegate void OnDamageDelegate(Mortal instance, int damage);

	public OnDeathDelegate onDeathHandler;
	public OnDamageDelegate onDamageHandler;

	public int GetHealth()
	{
		return health;
	}

	public int Damage(int amount)
	{	
		if(onDamageHandler != null)
		{
			onDamageHandler(this, amount);
		}
		health -= amount;
		print("Taking " + amount + " in damage");
		if(IsAlive() == false)
		{
			Die();
		}
		return health;
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