// Aberration Template
#include "inc_ai"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_halfearth"

void main()
{
     int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");

    if( nPowers < (GetHitDice(OBJECT_SELF)))
    {
        __TurnCombatRoundOn(TRUE);
        if(EARTH_SpecialAttack()==1)
        {
            SetLocalInt(OBJECT_SELF,"nPowers",nPowers+1);
        }
        __TurnCombatRoundOn(TRUE);

    }

}
