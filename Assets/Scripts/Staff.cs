using UnityEngine;
public class Staff : MonoBehaviour
{

	private GameObject player;
	private PlayerController playerController;

	public delegate void HitHandler(Collision collision, int damage);

	public event HitHandler onHit;

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

		int dmg = 1;
		mortal.Damage(dmg);
		if(onHit != null)
		{
			print("onHit");
			onHit(collision, dmg);
		}

	}
}