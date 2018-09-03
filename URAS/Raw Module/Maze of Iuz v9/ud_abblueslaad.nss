// Aberration Template

#include "inc_ai"
#include "inc_magic"
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
    case 1011:
        if(d6() < 6) MMPC_CastDispelMagic();
        break;
    default:
        if(d6() < 5)
        {
            if(GetCurrentAction() == ACTION_CASTSPELL) break;
            if(d6() < 4)
            {
                switch(d2())
                {
                case 1:
                    ABERRATION_SpecialAttack();
                    break;
                case 2:
                    DEMON_CastHoldPerson();
                    break;
                }
            }
        }
        break;


    }

}
