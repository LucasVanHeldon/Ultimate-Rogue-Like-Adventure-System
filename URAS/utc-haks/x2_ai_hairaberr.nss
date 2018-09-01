#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"
#include "inc_demons"
#include "inc_mmp"
#include "inc_demonic"
#include "inc_aberration"
#include "inc_halfair"




void main()
{
    if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        switch(d2())
        {
        case 1: MMPABB_SpecialAttack(); break;
        case 2: AIR_SpecialAttack(); break;
        }
        __TurnCombatRoundOn(FALSE);
    }
    else ExecuteScript("x2_ai_mflayer",OBJECT_SELF);


}
