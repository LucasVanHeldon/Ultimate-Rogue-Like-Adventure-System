// Aberration Template
#include "x0_i0_spawncond"
#include "ai_inc"
#include "inc_aberooze"

void main()
{
    __TurnCombatRoundOn(TRUE);
    MMPABB_SpecialAttack();
    __TurnCombatRoundOn(FALSE);
}


