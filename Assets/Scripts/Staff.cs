using UnityEngine;
public class Staff : MonoBehaviour
{

	private GameObject player;
	private PlayerController playerController;

	public delegate void HitHandler(Collider collider, int damage);

	public event HitHandler onHit;

	private bool alreadyHit;

	void Awake()
	{
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();
	}

	void OnTriggerExit(Collider other)
	{
		alreadyHit = false;	
	}

	void OnTriggerStay(Collider collider)
	{
		if(playerController.IsAttacking() == false)
			return;

		if(collider.gameObject.tag != Tags.mortalCollider)
			return;
		
		GameObject obj = collider.transform.parent.gameObject;
		if(obj == null)
			return;


		Mortal mortal = obj.GetComponent<Mortal>();
		if(mortal == null)
			return;

		if(alreadyHit) return;

		int dmg = 1;
		if(mortal.Damage(dmg, gameObject) > 0)
		{
			audio.Play();
			alreadyHit = true;
			if(onHit != null)
			{
				//print("onHit");
				onHit(collider, dmg);
			}
		}

	}
}