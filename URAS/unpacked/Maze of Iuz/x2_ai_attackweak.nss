#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"




void main()
{
    object oEnemy = FindWeakestEnemy(OBJECT_SELF);
    if(GetIsObjectValid(oEnemy) && d6() < 4)
    {
        __TurnCombatRoundOn(TRUE);
        ActionAttack(oEnemy);
        __TurnCombatRoundOn(FALSE);
    }
}
