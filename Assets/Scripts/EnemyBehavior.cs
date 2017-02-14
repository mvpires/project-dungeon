using UnityEngine;
using System.Collections;

public class EnemyBehavior : MonoBehaviour
{

    private Animation mAnimation;
    private UnityEngine.AI.NavMeshAgent mNavMeshAgent;
    public GameObject mPlayer;
    private float mAttackDistance;
    private int life;
    private bool isDead;

    // Use this for initialization
    void Start()
    {
        mNavMeshAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        mAnimation = GetComponent<Animation>();
    }

    void Awake()
    {
        if (tag.Equals(GameManager.Instance.GetEnemySkeletonTag()))
        {
            life = 75;
            isDead = false;
            //mAnimation["Idle"].layer = 1;
            //mAnimation["Walk"].layer = 1;
            //mAnimation["Attack"].layer = 2;
            //mAnimation["Damage"].layer = 1;
        }

    }

    // Update is called once per frame
    void Update()
    {
        if (!isDead)
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


    }

    void Attack()
    {
        if (!isDead)
        {
            mAnimation.CrossFade("Attack");
            mAnimation["Attack"].speed = 2F;
        }
    }

    void OnTriggerStay(Collider collider)
    {
        if (collider.gameObject.tag == GameManager.Instance.GetAttackRangeTag())
        {
            if (GameManager.Instance.CheckAttackHit())
            {
                life -= 25;
                GameManager.Instance.SetAttackHit(false);
                Debug.Log(life);
                mNavMeshAgent.Stop();
                mAnimation.Stop("Attack");
                mAnimation.Play("Damage");

                if (life == 0)
                {
                    isDead = true;
                    mNavMeshAgent.Stop();
                    mAnimation.Play("Death");

                }
                else
                {
                    mNavMeshAgent.Resume();
                }

                Debug.Log("BATEU");
            }
        }
    }

    public void EnemyDead()
    {
        Destroy(gameObject);
    }
}
