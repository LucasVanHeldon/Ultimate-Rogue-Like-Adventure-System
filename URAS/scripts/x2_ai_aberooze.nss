// Aberration Template
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_demonic"
#include "inc_aberration"
#include "inc_ooze"

void main()
{
    __TurnCombatRoundOn(TRUE);
    switch(d2())
    {
    case 1: OOZE_SpecialAttack(); break;
    case 2: ABERRATION_SpecialAttack(); break;
    }
    __TurnCombatRoundOn(FALSE);
}


