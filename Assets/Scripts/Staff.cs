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


/*
using UnityEngine;
using System.Collections;

public class Staff : MonoBehaviour {
	
	public float swingSpeed = 1f;
	private bool swinging = false;
	private float angle = 0;
	// Use this for initialization
	void Start () {
	
	}
	
	void FixedUpdate () {
		if(Input.GetMouseButtonDown(0)){
			angle = 90;
			UpdateAngle();
			swinging = true;
			//print ("MouseDown");
		}
		if(angle < 0){
			angle = 0;
			UpdateAngle();
			swinging = false;
		}
		if(angle > 0){
			//print ("Swinging..." + transform.localEulerAngles);
			angle -= swingSpeed;
			UpdateAngle();
		}
	}
	
	void OnTriggerEnter(Collider other){
		//print ("OnTriggerEnter " + other.gameObject.tag);
		if(other.gameObject.tag == "Enemy" && swinging){
			other.gameObject.SetActive(false);
		}
	}
	
	void UpdateAngle(){
		transform.localEulerAngles = new Vector3(angle, 0, 0);
	}
}
*/