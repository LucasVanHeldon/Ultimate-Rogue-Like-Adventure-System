#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"
#include "inc_demonic"



void SpecialAttack()
{
    // don't let it interrupt this is fickle
    if(GetCurrentAction(OBJECT_SELF) == ACTION_CASTSPELL) return;
    switch(d12())
    {
    case 1:
        DEMON_CastLightningBolt();
        break;
    case 2:
        DEMON_AnimateObjects();
        break;
    case 3:
        DEMON_ChaosHammer();
        break;
    case 4:
        DEMON_CastDarkness();
        break;
    case 5:
        DEMON_CastDispelMagic();
        break;
    case 6:
        GRAYSLAAD_Summon();
        break;
    case 7:
        DEMONIC_SpecialAttack();
        break;
    case 8:
        DEMON_CastCauseBlindness();
        break;
    default:
        MMPABB_SpecialAttack();
    }
}



void main()
{
    if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        SpecialAttack();
        __TurnCombatRoundOn(FALSE);
    }
}
