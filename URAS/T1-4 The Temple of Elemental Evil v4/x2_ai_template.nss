#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "x0_i0_spawncond"
#include "x3_inc_skin"
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"
#include "inc_demons"
#include "inc_psychic"

void UpdateVar(string v)
{
    SetLocalInt(OBJECT_SELF,v,GetLocalInt(OBJECT_SELF,v)-1);
}

// todo : all special abiilities
int TEMPLATE_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    int nHD = GetHitDice(OBJECT_SELF);


    if(GetLocalInt(OBJECT_SELF,"bMindBlast") > 0 && nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bMindBlast");
            MMP_MindBlast(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bCharmGaze") && nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bCharmGaze");
            MMP_GazeCharm(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraBlind") && nHD > 7)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_BLINDING))
        {
            UpdateVar("bAuraBlind");
            MMP_AuraBlind(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraCold") && nHD > 8)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_COLD))
        {
            UpdateVar("bAuraCold");
            MMP_AuraCold(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraElectricity") && nHD > 8)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_ELECTRICITY))
        {
            UpdateVar("bAuraElectricity");
            MMP_AuraElectricity(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraFire") && nHD > 8)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_FIRE))
        {
            UpdateVar("bAuraFire
            MMP_AuraFire(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraFear") && nHD > 6)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_FEAR))
        {
            UpdateVar("bAuraFear");
            MMP_AuraFear(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraMenace") && nHD > 9)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_MENACE))
        {
            UpdateVar("bAuraMenace");
            MMP_AuraMenace(oTarget);
            return 1;
        }


    if(GetLocalInt(OBJECT_SELF,"bAuraProtection") && nHD > 7)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_PROTECTION))
        {
            UpdateVar("bAuraProtection");
            MMP_AuraProtection(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraStun") && nHD > 6)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_STUN))
        {
            UpdateVar("bAuraStun");
            MMP_AuraStun(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraUnearthlyVisage") && nHD > 20)
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_UNEARTHLY_VISAGE))
        {
            UpdateVar("bAuraUneartlyVisage");
            MMP_AuraUnearthlyVisage(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltCHA"))
        if(d6() < 3)
        {
            UpdateVar("bBoltCHA");
            MMP_BoltDrainCHA(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bBoltINT"))
        if(d6() < 3)
        {
            UpdateVar("bBoltINT");
            MMP_BoltDrainINT(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bBoltWIS"))
        if(d6() < 3)
        {
            UpdateVar("bBoltWIS");
            MMP_BoltDrainWIS(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltSTR"))
        if(d6() < 3)
        {
            UpdateVar("bBoltSTR");
            MMP_BoltDrainSTR(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltDEX"))
        if(d6() < 3)
        {
            UpdateVar("bBoltDEX");
            MMP_BoltDrainDEX(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltCON"))
        if(d6() < 3)
        {
            UpdateVar("bBoltCON");
            MMP_BoltDrainCON(oTarget);
            return 1;
        }


    if(GetLocalInt(OBJECT_SELF,"bSonicCone")&& nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bSonicCone");
            MMP_SonicCone(oTarget);
            return 1;
        }


    if(GetLocalInt(OBJECT_SELF,"bGazeCharm") && nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bGazeCharm");
            MMP_GazeCharm(oTarget);
            return 1;
        }

     if(GetLocalInt(OBJECT_SELF,"bGazeConfuse") && nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bGazeConfuse");
            MMP_GazeConfusion(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeDaze")&& nHD > 4)
        if(d6() < 3)
        {
            UpdateVar("bGazeDaze");
            MMP_GazeDaze(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeFear")&& nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bGazeFear");
            MMP_GazeFear(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeDominate")&& nHD > 10)
        if(d6() < 3)
        {
            UpdateVar("bGazeDominate");
            MMP_GazeDomination(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bRayOfEnfeeble"))
        if(d6() < 3)
        {
            UpdateVar("bRayOfEnfeeble");
            MMP_RayOfEnfeeblement(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bPDCHA")  && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bPDCHA");
            MMP_PulseDrainCHA(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDINT") && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bPDINT");
            MMP_PulseDrainINT(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDWIS") && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bPDWIS");
            MMP_PulseDrainWIS(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDDEX") && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bPDDEX");
            MMP_PulseDrainDEX(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDCON") && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bPDCON");
            MMP_PulseDrainCON(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDSTR") && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bPDSTR");
            MMP_PulseDrainSTR(oTarget);
            return 1;
        }



    if(GetLocalInt(OBJECT_SELF,"bHoldPerson") && nHD > 3)
        if(d6() < 3)
        {
            UpdateVar("bHoldPerson");
            MMP_HoldPerson(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bHoldMonster") && nHD > 5)
        if(d6() < 3)
        {
            UpdateVar("bHoldMonster");
            MMP_HoldMonster(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bCharmPerson"))
        if(d6() < 3)
        {
            UpdateVar("bCharmPerson");
            MMP_CharmPerson(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bCharmMonster") && nHD > 3)
        if(d6() < 3)
        {
            UpdateVar("bCharmMonster");
            MMP_CharmMonster(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bDominatePerson") && nHD > 7)
        if(d6() < 3)
        {
            UpdateVar("bDominatePerson");
            MMP_DominatePerson(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bDominateMonster") && nHD > 11)
        if(d6() < 3)
        {
            UpdateVar("bDominateMonster");
            MMP_DominateMonster(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoom") && nHD > 3)
        if(d6() < 3)
        {
            UpdateVar("bBoom");
            MMP_Boom(oTarget);
            return 1;
        }


     if(GetLocalInt(OBJECT_SELF,"bConfusion") && nHD > 7)
        if(d6() < 3)
        {
            UpdateVar("bConfusion");
            MMP_Confusion(oTarget);
            return 1;
        }

     if(GetLocalInt(OBJECT_SELF,"bScare"))
        if(d6() < 3)
        {
            UpdateVar("bScare");
            MMP_Scare(oTarget);
            return 1;
        }

      if(GetLocalInt(OBJECT_SELF,"bDaze"))
        if(d6() < 3)
        {
            UpdateVar("bDaze");
            MMP_Daze(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bInsanity") && nHD > 15)
        if(d6() < 3)
        {
            UpdateVar("bInsanity");
            MMP_Insanity(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bDeafeningClang") && nHD > 3)
        if(d6() < 3)
        {
            UpdateVar("bDeafeningClang");
            MMP_DeafeningClang(oTarget);
            return 1;
        }

    if(GetLocalInt(OBJECT_SELF,"bDisplacement") && nHD > 6)
        if(d6() < 3)
        {
            UpdateVar("bDisplacement");
            MMP_Displacement(OBJECT_SELF);
            return 1;
        }


    if(GetLocalInt(OBJECT_SELF,"bEnergyDrain") && nHD > 3)
        if(d6() < 3)
        {
            UpdateVar("bEnergyDrain");
            MMP_EnergyDrain(oTarget);
            return 1;
        }
    if(GetLocalInt(OBJECT_SELF,"bFear") && nHD > 7)
        if(d6() < 3)
        {
            UpdateVar("bFear");
            MMP_Fear(oTarget);
            return 1;
        }

   if(GetLocalInt(OBJECT_SELF,"bFingerOfDeath") && nHD > 12)
        if(d6() < 3)
        {
            UpdateVar("bFingerOfDeath");
            MMP_FingerOfDeath(oTarget);
            return 1;
        }

   if(GetLocalInt(OBJECT_SELF,"bGhoulTouch") && nHD > 3)
        if(d6() < 3)
        {
            UpdateVar("bGhoulTouch");
            MMP_EnergyDrain(oTarget);
            return 1;
        }


   if(GetLocalInt(OBJECT_SELF,"bVampiricTouch") && nHD > 7)
        if(d6() < 3)
        {
            UpdateVar("bVampiricTouch");
            MMP_VampiricTouch(oTarget);
            return 1;
        }

     if(GetLocalInt(OBJECT_SELF,"bPDLVL"))
        if(d6() < 3)
        {

            UpdateVar("bPDLVL");
            MMP_PulseDrainLevel(oTarget);
            return 1;
        }
     if(GetLocalInt(OBJECT_SELF,"bPNEG"))
        if(d6() < 3)
        {
            UpdateVar("bPDNEG");
            MMP_PulseNegative(oTarget);
            return 1;
        }

    return 0;
}

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

    switch(Random(13)+1)
    {
    case 1:

        if(nDarkness < GetHitDice(OBJECT_SELF))
        {
            SendMessageToPC(GetFirstPC(),"Darkness");
            SetLocalInt(OBJECT_SELF,"nDarkness",nDarkness+1);
            DEMON_CastDarkness();

        }
        break;
    case 2:
        if(nDarkness < GetHitDice(OBJECT_SELF))
        {
            SendMessageToPC(GetFirstPC(),"Dispel Magic");
            SetLocalInt(OBJECT_SELF,"nDarkness",nDispel+1);
            DEMON_DispelSpellCaster();
        }
        break;
    case 3:
        DEMON_Teleport();
        break;
    case 4:
        if(nUnholyBlight < (GetHitDice(OBJECT_SELF)/2+1))
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
        if(nUnholyBlight < (GetHitDice(OBJECT_SELF)/2+1))
        {
            SendMessageToPC(GetFirstPC(),"Chaos Hammer");
            SetLocalInt(OBJECT_SELF,"nChaosHammer",nChaosHammer+1);
            DEMON_CastChaosHammer();
        }
        break;
    case 7:
        if(nBlasphemy < 1)
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
        SendMessageToPC(GetFirstPC(),"Confusion");
        DEMON_CastConfusion();
        break;
    case 10:
        if(nDominate < GetHitDice(OBJECT_SELF)/2+1)
        {
            SendMessageToPC(GetFirstPC(),"Dominate");
            SetLocalInt(OBJECT_SELF,"nDominate",nDominate+1);
            DEMON_DominateMonster();
        }
        break;
    case 11:
        if(nInsanity < 1)
        {
            SendMessageToPC(GetFirstPC(),"Insanity");
            SetLocalInt(OBJECT_SELF,"nInsanity",1);
            DEMON_Insanity();
        }
        break;
    case 12:
        if(nPowerWord < 1)
        {
            SendMessageToPC(GetFirstPC(),"Power Word: Stun");
            SetLocalInt(OBJECT_SELF,"nPowerWord",1);
            DEMON_PowerWordStun();
        }
        break;
    case 13:
    default:
        SendMessageToPC(GetFirstPC(),"Dominate");
        DEMON_CastDispelMagic();
        break;


    }
}

void main()
{
    object oEnemy = bkAcquireTarget();
    int nPoints = GetLocalInt(OBJECT_SELF,"nPoints");

    if(d6() < 3)
    {

        if(GetLocalInt(OBJECT_SELF,"nDemonic")==1)
        {
            __TurnCombatRoundOn(TRUE);
            DEMONIC_SpecialAttack();
            __TurnCombatRoundOn(FALSE);
        }
        else
        {
                __TurnCombatRoundOn(TRUE);
                if(TEMPLATE_SpecialAttack())
                __TurnCombatRoundOn(FALSE);
        }

    }
}
