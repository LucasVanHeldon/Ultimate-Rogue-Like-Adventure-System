// Aberration Sorcerer template
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberwizard"



void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1003:
        if(GetCurrentAction() == ACTION_CASTSPELL) break;
        SendMessageToPC(GetFirstPC(),"Running attack");
        if(d6() < 3) DEMON_Blink();
        if(d6() < 3) MMPABB_SpecialAttack();
        break;

    case 1011:
        if(d6() < 6) MMPC_CastDispelMagic();
        break;

    }

}
