using UnityEngine;
using System.Collections;

public class head : MonoBehaviour {

	public Transform target;
	public float clamprotation = 10f;
	public Vector3 addvector;
	public bool isenabled = false;

	void LateUpdate () 
	{
		if (isenabled) 
		{
			Vector3 relativePos = target.transform.position - transform.position;

			Quaternion lookrotation = Quaternion.LookRotation (relativePos, Vector3.up);
			Vector3 Wantedrotation = new Vector3 (lookrotation.eulerAngles.x, lookrotation.eulerAngles.y, -lookrotation.eulerAngles.z);
			transform.eulerAngles = Wantedrotation + addvector;
		}
	}
}
