// Book of Demons - Babau
// By Weed Wizard

#include "x0_i0_spawncond"
#include "inc_demons"


void SpecialAttack()
{
    switch(d3())
    {
    case 1:
        SendMessageToPC(GetFirstPC(),"Darkness");
        DEMON_CastDarkness();
        break;
    case 2:
        SendMessageToPC(GetFirstPC(),"Dispel Magic");
        DEMON_DispelSpellCaster();
        break;
    case 3:
        DEMON_Teleport();
        break;

    }
}

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
        if(d6() < 3)
        {
            SpecialAttack();
        }
        break;
    case 1006:
        if(GetLocalInt(OBJECT_SELF,"bGated") == 0 && GetCurrentHitPoints() < 20)
        {

            SetLocalInt(OBJECT_SELF,"bGated",1);
            ClearAllActions(TRUE);
            ActionCastFakeSpellAtLocation(SPELL_GATE,GetLocation(OBJECT_SELF));
            int chance = Random(100);
            if(chance < 40)
            {
                effect eVis = EffectVisualEffect(VFX_FNF_SUMMON_MONSTER_1);
                object oD = CreateObject(OBJECT_TYPE_CREATURE,"babau",GetLocation(OBJECT_SELF));
                // summons can't gate
                SetLocalInt(oD,"bGated",1);
                ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eVis,GetLocation(OBJECT_SELF));
            }
        }
        else if(d6() < 3)
        {
            SpecialAttack();
        }
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
