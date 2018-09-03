
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_morbid"





void main()
{
    if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        MMPMRBD_SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }
}
