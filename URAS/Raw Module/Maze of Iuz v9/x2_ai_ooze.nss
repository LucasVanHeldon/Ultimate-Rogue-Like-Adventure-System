#include "x0_i0_spawncond"
#include "inc_ai"
#include "inc_mmp"
#include "inc_ooze"

void main()
{
    __TurnCombatRoundOn(TRUE);
    OOZE_SpecialAttack();
    __TurnCombatRoundOn(FALSE);
}
