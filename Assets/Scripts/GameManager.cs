using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public static GameManager instance;
    private bool isInAttackRange = false;
    private bool isAttacking = false;
    private string attackRangeTag = "Player Attack Range";
    private string enemySkeletonTag = "Skeleton";

    public static GameManager Instance
    {
        get{
            if(instance == null)
            {
                instance = new GameObject("Game Manager").AddComponent<GameManager>();
            }

            return instance;
        }
    }

    public void OnApplicationQuit()
    {
        instance = null;
    }

    public void SetAttackRangeTrue()
    {
        isInAttackRange = true;
    }

    public void SetAttackRangeFalse()
    {
        isInAttackRange = false;
    }

    public bool IsInAttackRange()
    {
        return isInAttackRange;
    }

    public void setAttackingStatus(bool arg)
    {
        isAttacking = arg;
    }

    public bool CheckAttackingStatus()
    {
        return isAttacking;
    }

    public string GetAttackRangeTag()
    {
        return attackRangeTag;
    }

    public string GetEnemySkeletonTag()
    {
        return enemySkeletonTag;
    }
}
