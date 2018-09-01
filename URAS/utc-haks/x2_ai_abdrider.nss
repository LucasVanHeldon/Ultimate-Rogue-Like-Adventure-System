#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"


#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"



void main()
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
    else
    {
        __TurnCombatRoundOn(TRUE);
        MMPABB_SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }
}
