// Aberration Template
#include "x0_i0_spawncond"
#include "inc_ai"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_halffire"


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();

    int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");

    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1003:
        if(GetCurrentAction() == ACTION_CASTSPELL) break;
        if( nPowers < (GetHitDice(OBJECT_SELF)))
        {
            if(FIRE_SpecialAttack()==1)
                SetLocalInt(OBJECT_SELF,"nPowers",nPowers+1);
        }
        break;
    }
}
