using UnityEngine;
using System.Collections;

public class Collectible : MonoBehaviour
{

	void Update() 
	{
		transform.Rotate(0, 1.0f, 0);
		// audio.Play();
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject != null & other.gameObject.tag == Tags.player && audio.isPlaying == false)		
		{
			PlayerController pc = other.gameObject.GetComponent<PlayerController>();
			pc.Collect(this);
			audio.Play();
			Disable();
			StartCoroutine(Die());
		}
	}

	void Disable()
	{
		renderer.enabled = false;
		int len = transform.childCount;
		for(int i = 0; i < len; i++)
		{
			Renderer r = transform.GetChild(i).renderer;
			if(r != null)
				r.enabled = false;
		}
	}

	IEnumerator Die()
	{
		while(audio.isPlaying)
		{
			yield return new WaitForSeconds(1.0f);
		}
		Destroy(gameObject);
	}

}
