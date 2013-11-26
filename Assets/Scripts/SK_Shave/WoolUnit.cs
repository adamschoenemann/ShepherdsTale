using UnityEngine;
using System.Collections;

public class WoolUnit : MonoBehaviour {

	public float powerUpwards = 1.0f;
	public float powerSideways = 1.0f;

	private Timer timer;
	private static readonly int lifeTimeMillis = 5000;

	// Use this for initialization
	void Start () {
		timer = new Timer(lifeTimeMillis);

		float r = Random.value*2;
		float direction = r-1.0f;

		rigidbody.AddForce(transform.up * 0.5f);
		rigidbody.AddForce(transform.right * 0.3f * direction);
	}
	
	// Update is called once per frame
	void Update () {

		timer.TickSeconds (Time.deltaTime);
		if(timer.IsDone())
		{
			Destroy(gameObject);
		}
	}
}
