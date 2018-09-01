// Ooze Template
#include "x0_i0_spawncond"
#include "inc_ai"
#include "inc_mmp"
#include "inc_ooze"



void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    default:
        if(GetCurrentAction() == ACTION_CASTSPELL) break;
        if(d6() < 4)
            OOZE_SpecialAttack();
        break;
    }
}
