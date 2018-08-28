// Aberration Template

#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"
#include "inc_ai"
#include "inc_demons"
#include "inc_mmp"
#include "inc_unholy"

void main()
{
    if(d6() < 3)
    {

        if(d6() < 4)
        {
            __TurnCombatRoundOn(TRUE);
            switch(d3())
            {
            case 1: DEMONIC_SpecialAttack(); break;
            case 2: ABERRATION_SpecialAttack(); break;
            case 3: MORBID_SpecialAttack(); break;
            }
            __TurnCombatRoundOn(FALSE);
        }
    }
}
