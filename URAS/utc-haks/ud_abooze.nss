// Aberration Template
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"



void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    default:
        if(d6() < 5)
        {
            if(GetCurrentAction() == ACTION_CASTSPELL) break;
            MMPABB_SpecialAttack();
        }
        break;
    }
}
