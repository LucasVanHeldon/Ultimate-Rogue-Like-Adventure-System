// Aberration Template
#include "x0_i0_spawncond"
#include "inc_ai"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_halfwater"



void main()
{
    int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");

    if( nPowers < (GetHitDice(OBJECT_SELF)))
    {
        __TurnCombatRoundOn(TRUE);

        if(WATER_SpecialAttack()==1)
            SetLocalInt(OBJECT_SELF,"nPowers",nPowers+1);

        __TurnCombatRoundOn(FALSE);

    }


}
