
#include "inc_demons"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_demons"
#include "inc_heretic"




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
    case 1003:
        if(d6() < 5)
        {
            if(GetCurrentAction() == ACTION_CASTSPELL) break;
            if(d6() < 4)
                switch(d4())
                {
                case 1: DEMONIC_SpecialAttack(); break;
                case 2: ABERRATION_SpecialAttack(); break;
                case 3: MORBID_SpecialAttack(); break;
                case 4: HERETICAL_SpecialAttack(); break;
                }
        }
        break;


    }

}


