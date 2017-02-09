using UnityEngine;
using System.Collections;

public class EnemyBehavior : MonoBehaviour
{

    private Animation mAnimation;
    private UnityEngine.AI.NavMeshAgent mNavMeshAgent;
    public GameObject mPlayer;
    private float mAttackDistance;

    // Use this for initialization
    void Start()
    {
        mNavMeshAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        mAnimation = GetComponent<Animation>();
    }

    void Awake()
    {
        if (tag.Equals("Skeleton"))
        {

            //mAnimation["Idle"].layer = 1;
            //mAnimation["Walk"].layer = 1;
            //mAnimation["Attack"].layer = 2;
        }

    }

    // Update is called once per frame
    void Update()
    {
        mAttackDistance = Vector3.Distance(gameObject.transform.position, mPlayer.transform.position);
        mNavMeshAgent.SetDestination(mPlayer.transform.position);
        mAnimation.CrossFade("Walk");

        if (mAttackDistance < 20.0f)
        {
            Attack();
            mNavMeshAgent.Stop();
        }
        else if (mAttackDistance > 20.0f)
        {
            mAnimation.CrossFade("Walk");
            mNavMeshAgent.Resume();
        }

        
    }

    void Attack()
    {
        mAnimation.CrossFade("Attack");
        mAnimation["Attack"].speed = 2F;
    }
}
