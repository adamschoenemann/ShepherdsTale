using UnityEngine;
public class Staff : MonoBehaviour
{

	private GameObject player;
	private PlayerController playerController;

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

		mortal.Damage(1);

	}
}