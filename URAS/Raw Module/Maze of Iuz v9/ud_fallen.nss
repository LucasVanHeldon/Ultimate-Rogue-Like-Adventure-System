// Fallen = Morbid + Aberration

#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"
#include "inc_ai"
#include "inc_demons"
#include "inc_mmp"
#include "inc_fallen"




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
            if(d6() < 3)
                switch(d2())
                {
                case 1: DEMONIC_SpecialAttack(); break;
                case 2: ABERRATION_SpecialAttack(); break;
                }
        }
        break;


    }

}
