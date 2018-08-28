
#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_morbid"





void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1003:
        if(GetCurrentAction() == ACTION_CASTSPELL) break;
        if(d6() < 3) MMPMRBD_SpecialAttack();
        break;
    }
}
