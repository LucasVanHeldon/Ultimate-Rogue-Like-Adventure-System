

#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_aboleth"

void main()
{
    if(d6() < 4)
    {
      __TurnCombatRoundOn(TRUE);
        SpecialAttack();
      __TurnCombatRoundOn(FALSE);

    }
}
