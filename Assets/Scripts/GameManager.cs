using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public static GameManager instance;
    private bool isInAttackRange = false;
    private bool isAttacking = false;
    private string attackRangeTag = "Player Attack Range";
    private string enemySkeletonTag = "Skeleton";
    private bool attackHit = false;
    private bool openDoor = false;
    private int levelNumber = 0;

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

    public void SetAttackRange(bool arg)
    {
        isInAttackRange = arg;
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

    public bool CheckAttackHit()
    {
        return attackHit;
    }

    public void SetAttackHit(bool arg)
    {
        attackHit = arg;
    }

    public bool CheckDoor()
    {
        return openDoor;
    }

    public void setDoorStatus(bool arg)
    {
        openDoor = arg;
    }
}
