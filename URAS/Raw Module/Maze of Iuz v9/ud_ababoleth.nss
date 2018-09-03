// Aberrant Aboleth

#include "x0_i0_spawncond"
#include "inc_mmp"
#include "inc_aboleth"


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();

    switch(nCalledBy)
    {
    case 1002:
        i = GetLocalInt(OBJECT_SELF,"nState");
        if(i < 3)
        {
            ABOLETH_Enslave();
            SetLocalInt(OBJECT_SELF,"nState",i+1);
        }
        break;
    case 1003:
        if(d6() < 3) SpecialAttack();
        break;
    case 1011:
        if(GetIsEnemy(GetLastSpellCaster()) && d6() < 3) SpellCast(GetLastSpellCaster());
        break;
    }
}
