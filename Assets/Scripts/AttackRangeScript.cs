using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackRangeScript : MonoBehaviour {

	void OnTriggerEnter(Collider collider)
    {
        if(collider.gameObject.tag == GameManager.Instance.GetEnemySkeletonTag())
        {
            GameManager.Instance.SetAttackRange(true);
            Debug.Log("Attack Range true");
        }
    }

    void OnTriggerExit(Collider collider)
    {
        if (collider.gameObject.tag == GameManager.Instance.GetEnemySkeletonTag())
        {
            GameManager.Instance.SetAttackRange(false);
            Debug.Log("Attack Range false");
        }
    }
}
