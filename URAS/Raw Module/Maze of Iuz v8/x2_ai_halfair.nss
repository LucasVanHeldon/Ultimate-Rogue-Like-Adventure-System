#include "x0_i0_spawncond"
// include "inc_mmp" can crash toolset...
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_halfair"

void main()
{
    int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");

    if(d6() < 3 && GetCurrentAction() != ACTION_CASTSPELL)
    {
        if( nPowers < (GetHitDice(OBJECT_SELF)))
        {
            __TurnCombatRoundOn(TRUE);
            if(AIR_SpecialAttack()==1)
            {
                SetLocalInt(OBJECT_SELF,"nPowers",nPowers+1);
            }
            __TurnCombatRoundOn(FALSE);
        }
    }

}
