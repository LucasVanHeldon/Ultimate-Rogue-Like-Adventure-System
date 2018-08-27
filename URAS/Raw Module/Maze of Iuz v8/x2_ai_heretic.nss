
#include "inc_demons"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_demons"
#include "inc_heretic"



void main()
{
    if(d6() < 3)
    {
        if(d6() < 4)
        {
            __TurnCombatRoundOn(TRUE);
            switch(d4())
            {
            case 1: DEMONIC_SpecialAttack(); break;
            case 2: ABERRATION_SpecialAttack(); break;
            case 3: MORBID_SpecialAttack(); break;
            case 4: HERETICAL_SpecialAttack(); break;
            }
            __TurnCombatRoundOn(TRUE);
        }
    }
}
