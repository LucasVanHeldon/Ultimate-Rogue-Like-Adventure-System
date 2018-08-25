// x2_ai_drider

#include "inc_mmp"
#include "inc_drider"


void main()
{
    if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        MMPABB_SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }
}

