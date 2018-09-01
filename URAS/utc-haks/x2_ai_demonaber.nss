#include "inc_demons"
#include "inc_mmp"
#include "inc_demonic"
#include "inc_aberration"


void SpecialAttack()
{
    switch(d2())
    {
    case 1: DEMONIC_SpecialAttack(); break;
    case 2: ABERRATION_SpecialAttack(); break;
    }
}



void main()
{
    if(d6() < 4)
    {
        __TurnCombatRoundOn(TRUE);
        SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }

}
