#include "inc_mmp"
#include "inc_psychic"

void main()
{
    int nPoints = GetLocalInt(OBJECT_SELF,"nPoints");
    SendMessageToPC(GetFirstPC(),"nPoints="+IntToString(nPoints));
    if(nPoints > 0)
    {
        __TurnCombatRoundOn(TRUE);

        int n = PSYCHIC_SpecialAttack(nPoints);
        SetLocalInt(OBJECT_SELF,"nPoints",nPoints-n);
        if(n == 0)
        {
            ActionAttack(FindNearestEnemy(OBJECT_SELF));
        }
        __TurnCombatRoundOn(FALSE);

    }
}


