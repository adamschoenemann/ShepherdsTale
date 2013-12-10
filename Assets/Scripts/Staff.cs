using UnityEngine;
public class Staff : MonoBehaviour
{

	private GameObject player;
	private PlayerController playerController;

	public delegate void HitHandler(Collider collider, int damage);

	public event HitHandler onHit;

	void Awake()
	{
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();
	}

	void OnTriggerEnter(Collider collider)
	{
		if(playerController.IsAttacking() == false)
			return;

		if(collider.gameObject.tag != Tags.mortalCollider)
			return;
		
		GameObject obj = collider.transform.parent.gameObject;
		if(obj == null)
			return;

		//	if(!audio.isPlaying)
			audio.Play();

		Mortal mortal = obj.GetComponent<Mortal>();
		if(mortal == null)
			return;

		int dmg = 1;
		mortal.Damage(dmg, gameObject);
		if(onHit != null)
		{
			//print("onHit");
			onHit(collider, dmg);
		}

	}
}