using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackRangeScript : MonoBehaviour {

	void OnTriggerEnter(Collider collider)
    {
        if(collider.gameObject.tag == "Skeleton")
        {
            GameManager.Instance.SetAttackRangeTrue();
            Debug.Log("Attack Range true");
        }
    }

    void OnTriggerExit(Collider collider)
    {
        if (collider.gameObject.tag == "Skeleton")
        {
            GameManager.Instance.SetAttackRangeFalse();
            Debug.Log("Attack Range false");
        }
    }
}
