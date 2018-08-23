#include "x0_i0_spawncond"
#include "inc_mmp"
#include "inc_drider"



void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1002:
     {
        int n = d4();
        int i;
        if(!GetLocalInt(OBJECT_SELF,"bDancingLights"))
        {
            SetLocalInt(OBJECT_SELF,"bDancingLights",1);
            ClearAllActions(TRUE);
            for(i = 0; i < n; i++)
                CreateObject(OBJECT_TYPE_CREATURE,"mmp_dancinglight",GetLocation(OBJECT_SELF));
        }
        DetermineCombatRound();
        break;
     }
    case 1003:
        MMPABB_SpecialAttack();
        break;
    }

}
