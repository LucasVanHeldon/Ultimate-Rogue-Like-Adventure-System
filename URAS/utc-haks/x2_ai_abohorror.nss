#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"



void main()
{
     __TurnCombatRoundOn(TRUE);
    MMPABB_SpecialAttack();
     __TurnCombatRoundOn(FALSE);
}
