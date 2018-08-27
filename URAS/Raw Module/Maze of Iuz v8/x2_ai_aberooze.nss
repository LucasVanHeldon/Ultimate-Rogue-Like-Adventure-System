// Aberration Template
#include "x0_i0_spawncond"
#include "ai_inc"
#include "inc_aberooze"

void main()
{
    if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        SendMessageToPC(GetFirstPC(),"Running X2_AI");
        MMPABB_SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }
}

