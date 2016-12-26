using UnityEngine;
using System.Collections;

public class RotateItem : MonoBehaviour {

	public float speed = 20f;
	
	// Update is called once per frame
	void Update () {
		// Rotate the object around its local X axis at 1 degree per second
		transform.Rotate(Vector3.right, speed * Time.deltaTime);
	}
}
