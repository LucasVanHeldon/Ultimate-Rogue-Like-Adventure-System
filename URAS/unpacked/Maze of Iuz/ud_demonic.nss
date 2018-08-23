#include "inc_demons"
#include "inc_mmpcastsp"
#include "inc_demonic"


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    object oSeen=GetLastPerceived();


    switch(nCalledBy)
    {
    case 1003:
        if(d6() < 3) DEMONIC_SpecialAttack();
        break;

    case 1011:

            if(GetLastSpellHarmful())
                DEMONIC_SpellCast(GetLastSpellCaster());
            break;

        break;

    }
}
