using UnityEngine;
public class Mortal : MonoBehaviour
{

	public int health = 5;

	public int GetHealth()
	{
		return health;
	}

	public int Damage(int amount)
	{	
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
		print("Died");
	}

	public bool IsAlive()
	{
		return (health > 0);
	}

}