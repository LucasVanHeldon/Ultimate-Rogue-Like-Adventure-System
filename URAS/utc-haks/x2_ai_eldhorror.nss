#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"
#include "inc_demonic"




void main()
{
    if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        MMPABB_SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }
    else if(d6() < 3)
    {
      __TurnCombatRoundOn(TRUE);
        DEMONIC_SpecialAttack();
      __TurnCombatRoundOn(FALSE);
    }
    else ExecuteScript("x2_ai_mflayer",OBJECT_SELF);

}
