
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_apostate"



void main()
{

    __TurnCombatRoundOn(TRUE);
    switch(d4())
    {
    case 1:
        DEMONIC_SpecialAttack();
        break;
    case 2:
        ABERRATION_SpecialAttack();
        break;
    case 3:
        APOSTATE_SpecialAttack();
        break;
    case 4:
        MORBID_SpecialAttack();
        break;
    }
    __TurnCombatRoundOn(FALSE);

}
