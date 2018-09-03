#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"
#include "inc_demons"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_aberration"

void main()
{
    int nCalledBy = GetUserDefinedEventNumber();

    switch(nCalledBy)
    {
    case 1003:
        if(GetCurrentAction() != ACTION_CASTSPELL && d6() < 3)
            MMPABB_SpecialAttack();
        break;
    }
}

