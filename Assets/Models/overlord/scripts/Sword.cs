using UnityEngine;
using System.Collections;

public class Sword : MonoBehaviour {


	public Transform impactPrefab;
	public LayerMask mask;
	public float damage = 25f;
	public bool canattack = false;




	void OnCollisionEnter(Collision collision) 
	{

		if (canattack)
		{
			

			foreach (ContactPoint contact in collision.contacts) 
			{
				if (collision.relativeVelocity.magnitude > .2f)
				{
					GameObject impact = Instantiate(impactPrefab, contact.point, Quaternion.FromToRotation(Vector3.up,contact.normal))as GameObject;
					impact.transform.localRotation = impact.transform.localRotation * Quaternion.Euler(0,Random.Range(-90,90),0);
					collision.gameObject.SendMessage ("Damage", damage,SendMessageOptions.DontRequireReceiver);

				}
					

			}

				
				

		}
	}
}