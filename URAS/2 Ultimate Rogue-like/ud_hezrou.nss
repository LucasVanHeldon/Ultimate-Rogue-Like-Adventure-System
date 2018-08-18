// Book of Demons - Hezrou
// By Weed Wizard

#include "x0_i0_spawncond"
#include "inc_demons"


void SpecialAttack()
{
    switch(d4())
    {
    case 1:
        DEMON_Blasphemy();
        break;
    case 2:
        DEMON_CastChaosHammer();
        break;
    case 3:
        DEMON_CastUnholyBlight();
        break;
    case 4:
        DEMON_Teleport();
        break;
    }
}

void GateDemons()
{
    SetLocalInt(OBJECT_SELF,"bGated",1);
    ClearAllActions(TRUE);
    ActionCastFakeSpellAtLocation(SPELL_GATE,GetLocation(OBJECT_SELF));
    int num = 0;
    string bp = "";
    int chance = 0;
    switch(d2())
    {
    case 1:
        num = d10(4);
        bp = "dretch";
        chance = 35;
        break;
    case 2:
        num = 1;
        bp = "hezrou";
        chance = 35;
        break;
    }
    int roll = Random(100);
    if(roll < chance)
    {
        effect eVis = EffectVisualEffect(VFX_FNF_SUMMON_MONSTER_1);
        int i;
        for(i = 0; i < num; i++)
        {
            object oD = CreateObject(OBJECT_TYPE_CREATURE,bp,GetLocation(OBJECT_SELF));
            // summons can't gate
            SetLocalInt(oD,"bGated",1);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eVis,GetLocation(OBJECT_SELF));
        }
    }
}



void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    object oSeen=GetLastPerceived();

    int nCurState = GetLocalInt(OBJECT_SELF,"nCurState");

    switch(nCalledBy)
    {
    case 1002:

        // 60% chance it will use blasphemy
        if(Random(100) < 40)
            break;

        switch(nCurState)
        {
        case 0:
            DEMON_Blasphemy();
            nCurState = nCurState+1;
            SetLocalInt(OBJECT_SELF,"nCurState",nCurState);
            break;
        case 1:
            switch(d2())
            {
            case 1:
                DEMON_CastUnholyBlight();
                break;
            case 2:
                DEMON_CastChaosHammer();
                break;
            }
            nCurState = nCurState+1;
            SetLocalInt(OBJECT_SELF,"nCurState",nCurState);
            break;
        case 2:
            DetermineCombatRound();
            break;
        }
        break;
    case 1003:
        if(d6() < 3)
        {
            SpecialAttack();
        }
        break;
    case 1006:
        if(GetLocalInt(OBJECT_SELF,"bGated") == 0 && GetCurrentHitPoints() < 20)
        {
            GateDemons();
        }
        else if(d6() < 3)
        {
            SpecialAttack();
        }

        break;
    case 1011:
        // to do : should inspect for stuff to dispel
        object oSC = GetLastSpellCaster();
        if( d6() < 4 && GetLastSpellHarmful())
        {
            DEMON_DispelSpellCaster(oSC);
        }

        break;
    }
}
