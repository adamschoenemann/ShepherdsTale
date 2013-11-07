using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {
	
	public float speed = 0.3f;
	public float turnSmoothing = 15f;   // A smoothing value for turning the player.
	private GameObject cam;


	void Awake()
	{
		cam = GameObject.FindGameObjectWithTag(Tags.mainCamera);
	}
	// Use this for initialization
	void Start(){
	
	}
	
	// Update is called once per frame
	void Update(){
	
	}
	
	void FixedUpdate() {
		float h = Input.GetAxis("Horizontal");
		float w = Input.GetAxis("Vertical");
		Move(h, w);
	}
	
	void Move(float hor, float ver) {
		if(hor != 0f || ver != 0f){
			// print("move");
			Vector3 camForward = cam.transform.forward;
			Vector3 camRight = cam.transform.right;
			Vector3 forward = ver * Utils.ProjectToPlane(camForward, Vector3.up);
			Vector3 sideways = hor * Utils.ProjectToPlane(camRight, Vector3.up);
			Vector3 direction = sideways + forward;
			rigidbody.velocity = direction * speed * Time.deltaTime;
			Rotate(direction);
		}
	}
	
	void Rotate(Vector3 targetDirection) {
		if(rigidbody.velocity.magnitude <= 0)
		{
			return;
		}
		// Create a new vector of the horizontal and vertical inputs.
    // Vector3 targetDirection = rigidbody.transform.forward;
    
    // Create a rotation based on this new vector assuming that up is the global y axis.
    Quaternion targetRotation = Quaternion.LookRotation(targetDirection, Vector3.up);
    
    // Create a rotation that is an increment closer to the target rotation from the player's rotation.
    Quaternion newRotation = Quaternion.Lerp(rigidbody.rotation, targetRotation, turnSmoothing * Time.deltaTime);
    
    // Change the players rotation to this new rotation.
    rigidbody.MoveRotation(newRotation);
	}

}
