// Aberration Sorcerer template
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"
#include "inc_demonic"




void SpecialAttack()
{
    // don't let it interrupt this is fickle
    if(GetCurrentAction(OBJECT_SELF) == ACTION_CASTSPELL) return;
    switch(d8())
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
    default:
        DEMON_CastCauseBlindness();
    }
}



void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    default:
        if(GetCurrentAction() == ACTION_CASTSPELL) break;
        SendMessageToPC(GetFirstPC(),"Running attack");
        if(d6() < 4)
            MMPABB_SpecialAttack();

        break;
    }

}
