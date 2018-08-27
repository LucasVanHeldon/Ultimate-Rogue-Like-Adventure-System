#include "inc_demons"
#include "inc_mmpcastsp"


void DEMONIC_SpecialAttack()
{
    int nDarkness = GetLocalInt(OBJECT_SELF,"nDarkness");
    int nDispel = GetLocalInt(OBJECT_SELF,"nDispel");
    int nUnholyBlight = GetLocalInt(OBJECT_SELF,"nUnholyBlight");
    int nChaosHammer = GetLocalInt(OBJECT_SELF,"nChaosHammer");
    int nBlasphemy = GetLocalInt(OBJECT_SELF,"nBlasphemy");
    int nDominate = GetLocalInt(OBJECT_SELF,"nDominate");
    int nInsanity = GetLocalInt(OBJECT_SELF,"nInsanity");
    int nPowerWord = GetLocalInt(OBJECT_SELF,"nPowerWord");
    int nConfusion = GetLocalInt(OBJECT_SELF,"nConfusion");
    int nUnholyAura = GetLocalInt(OBJECT_SELF,"nUnholyAura");

    switch(Random(12)+1)
    {
    case 1:
        SetLocalInt(OBJECT_SELF,"nDarkness",nDarkness+1);
        DEMON_CastDarkness();
        break;
    case 2:
        if(GetHitDice(OBJECT_SELF) > 6)
        {
            SendMessageToPC(GetFirstPC(),"Dispel Magic");
            DEMON_DispelSpellCaster();
        }
        break;
    case 3:
        if(GetHitDice(OBJECT_SELF) > 3)  DEMON_Teleport();
        break;
    case 4:
        if(nUnholyBlight ==0 && GetHitDice(OBJECT_SELF) > 4 )
        {
            SendMessageToPC(GetFirstPC(),"Unholy Blight");
            SetLocalInt(OBJECT_SELF,"nUnholyBlight",nUnholyBlight+1);
            DEMON_CastUnholyBlight();
        }
        break;
    case 5:
        SendMessageToPC(GetFirstPC(),"Mirror Image");
        DEMON_Blink();
        break;
    case 6:
        if(nChaosHammer==0 && GetHitDice(OBJECT_SELF) > 6)
        {
            SendMessageToPC(GetFirstPC(),"Chaos Hammer");
            SetLocalInt(OBJECT_SELF,"nChaosHammer",nChaosHammer+1);
            DEMON_CastChaosHammer();
        }
        break;
    case 7:
        if(nBlasphemy < 1 && GetHitDice(OBJECT_SELF) > 10)
        {
            SendMessageToPC(GetFirstPC(),"Blasphemy");
            SetLocalInt(OBJECT_SELF,"nBlasphemy",1);
            DEMON_Blasphemy();
        }
        break;
    case 8:
        SendMessageToPC(GetFirstPC(),"Charm Person");
        DEMON_CharmPerson();
        break;
    case 9:
        if(GetHitDice(OBJECT_SELF) > 8 && nConfusion < 3)
        {
            SetLocalInt(OBJECT_SELF,"nConfusion",nConfusion+1);
            SendMessageToPC(GetFirstPC(),"Confusion");
            DEMON_CastConfusion();
        }
        break;
    case 10:
        if(nDominate == 0 && GetHitDice(OBJECT_SELF) > 10)
        {
            SendMessageToPC(GetFirstPC(),"Dominate");
            SetLocalInt(OBJECT_SELF,"nDominate",nDominate+1);
            DEMON_DominateMonster();
        }
        break;
    case 11:
        if(nInsanity < 1 && GetHitDice(OBJECT_SELF) > 19)
        {
            SendMessageToPC(GetFirstPC(),"Insanity");
            SetLocalInt(OBJECT_SELF,"nInsanity",1);
            DEMON_Insanity();
        }
        break;
    case 12:
        if(nPowerWord == 0 && GetHitDice(OBJECT_SELF) > 11)
        {
            SendMessageToPC(GetFirstPC(),"Power Word: Stun");
            SetLocalInt(OBJECT_SELF,"nPowerWord",1);
            DEMON_PowerWordStun();
        }
        break;
    case 13:
    default:
        if(nUnholyAura < 3 && GetHitDice(OBJECT_SELF) > 12)
        {
            MMPCAST__UNHOLY_AURA(OBJECT_SELF);
            SetLocalInt(OBJECT_SELF,"nUnholyAura",nUnholyAura+1);
        }
        break;
    }
}

void DEMONIC_SpellCast(object oTarget)
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
        if(d6() < 3) DEMONIC_SpecialAttack();
        break;

    case 1011:

            if(GetLastSpellHarmful())
                DEMONIC_SpellCast(GetLastSpellCaster());
            break;

        break;

    }
}
