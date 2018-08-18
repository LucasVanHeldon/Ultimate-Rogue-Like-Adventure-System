// Book of Demons - Babau
// By Weed Wizard

#include "x0_i0_spawncond"
#include "inc_demons"




void SpellCast(object oTarget)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = PickEnemy(OBJECT_SELF);

    switch(d3())
    {
    case 1:
        SendMessageToPC(GetFirstPC(),"Darkeness");
        DEMON_CastDarkness();
        break;
    case 2:
        SendMessageToPC(GetFirstPC(),"Dispel");
        DEMON_DispelSpellCaster();
        break;
    case 3:
        SendMessageToPC(GetFirstPC(),"Teleport");
        DEMON_Teleport();
        break;
    }
}


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    object oSeen=GetLastPerceived();


    switch(nCalledBy)
    {
    case 1003:
        break;
    case 1011:

        object oSC = GetLastSpellCaster();
        if( d6() < 4 && GetLastSpellHarmful())
        {
            SpellCast(oSC);
        }
        break;
    }
}