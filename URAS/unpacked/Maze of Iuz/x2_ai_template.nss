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
#include "inc_mmpcastsa"

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
            UpdateVar("bAuraFire");
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

int TemplateAbility(object oTarget)
{
 if(GetLocalInt(OBJECT_SELF,"bCONE_POISON") > 0)        if(d6() < 3)        {           UpdateVar("bCONE_POISON");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSUMMON_TANARRI") > 0)      if(d6() < 3)        {           UpdateVar("bSUMMON_TANARRI");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bRAGE_5") > 0)      if(d6() < 3)        {           UpdateVar("bRAGE_5");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSUMMON_MEPHIT") > 0)       if(d6() < 3)        {           UpdateVar("bSUMMON_MEPHIT");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_DEXTERITY") > 0)       if(d6() < 3)        {           UpdateVar("bPULSE_ABILITY_DRAIN_DEXTERITY");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_WEB") > 0)        if(d6() < 3)        {           UpdateVar("bBOLT_WEB");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_POISON") > 0)         if(d6() < 3)        {           UpdateVar("bBOLT_POISON");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_EVIL") > 0)       if(d6() < 3)        {           UpdateVar("bGAZE_DESTROY_EVIL");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBG_CONTAGION") > 0)        if(d6() < 3)        {           UpdateVar("bBG_CONTAGION");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_CONFUSION") > 0)      if(d6() < 3)        {           UpdateVar("bGAZE_CONFUSION");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bLAY_ON_HANDS") > 0)        if(d6() < 3)        {           UpdateVar("bLAY_ON_HANDS");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bEPIC_MIGHTY_RAGE") > 0)        if(d6() < 3)        {           UpdateVar("bEPIC_MIGHTY_RAGE");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCONE_FIRE") > 0)       if(d6() < 3)        {           UpdateVar("bCONE_FIRE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bEPIC_IMPROVED_WHIRLWIND") > 0)         if(d6() < 3)        {           UpdateVar("bEPIC_IMPROVED_WHIRLWIND");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_PARALYZE") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_PARALYZE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSUMMON_SLAAD") > 0)        if(d6() < 3)        {           UpdateVar("bSUMMON_SLAAD");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CHARISMA") > 0)        if(d6() < 3)        {           UpdateVar("bPULSE_ABILITY_DRAIN_CHARISMA");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_UNEARTHLY_VISAGE") > 0)       if(d6() < 3)        {           UpdateVar("bAURA_UNEARTHLY_VISAGE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_PARALYZE") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_PARALYZE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_OF_COURAGE") > 0)         if(d6() < 3)        {           UpdateVar("bAURA_OF_COURAGE");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bTOUCH_PETRIFY") > 0)       if(d6() < 3)        {           UpdateVar("bTOUCH_PETRIFY");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_LIGHTNING") > 0)         if(d6() < 3)        {           UpdateVar("bPULSE_LIGHTNING");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAA_SEEKER_ARROW_1") > 0)       if(d6() < 3)        {           UpdateVar("bAA_SEEKER_ARROW_1");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAA_SEEKER_ARROW_2") > 0)       if(d6() < 3)        {           UpdateVar("bAA_SEEKER_ARROW_2");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_FEAR") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_FEAR");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_SLOW") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_SLOW");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_LIGHTNING") > 0)         if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_LIGHTNING");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_DROWN") > 0)         if(d6() < 3)        {           UpdateVar("bPULSE_DROWN");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_COLD") > 0)      if(d6() < 3)        {           UpdateVar("bPULSE_COLD");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_STRENGTH") > 0)        if(d6() < 3)        {           UpdateVar("bPULSE_ABILITY_DRAIN_STRENGTH");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bELEMENTAL_SHAPE") > 0)         if(d6() < 3)        {           UpdateVar("bELEMENTAL_SHAPE");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDW_DEFENSIVE_STANCE") > 0)         if(d6() < 3)        {           UpdateVar("bDW_DEFENSIVE_STANCE");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPM_DEATHLESS_MASTER_TOUCH") > 0)       if(d6() < 3)        {           UpdateVar("bPM_DEATHLESS_MASTER_TOUCH");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_FEAR") > 0)       if(d6() < 3)        {           UpdateVar("bGAZE_FEAR");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_INTELLIGENCE") > 0)         if(d6() < 3)        {           UpdateVar("bBOLT_ABILITY_DRAIN_INTELLIGENCE");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bTROGLODYTE_STENCH") > 0)       if(d6() < 3)        {           UpdateVar("bTROGLODYTE_STENCH");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_DEXTERITY") > 0)        if(d6() < 3)        {           UpdateVar("bBOLT_ABILITY_DRAIN_DEXTERITY");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_UNNATURAL") > 0)      if(d6() < 3)        {           UpdateVar("bAURA_UNNATURAL");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_LIGHTNING") > 0)      if(d6() < 3)        {           UpdateVar("bBOLT_LIGHTNING");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_SHARDS") > 0)         if(d6() < 3)        {           UpdateVar("bBOLT_SHARDS");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bTRUMPET_BLAST") > 0)       if(d6() < 3)        {           UpdateVar("bTRUMPET_BLAST");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCONE_COLD") > 0)       if(d6() < 3)        {           UpdateVar("bCONE_COLD");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_STRENGTH") > 0)         if(d6() < 3)        {           UpdateVar("bBOLT_ABILITY_DRAIN_STRENGTH");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bEPIC_CURSE_SONG") > 0)         if(d6() < 3)        {           UpdateVar("bEPIC_CURSE_SONG");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCHARMMONSTER") > 0)        if(d6() < 3)        {           UpdateVar("bCHARMMONSTER");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_DOOM") > 0)       if(d6() < 3)        {           UpdateVar("bHOWL_DOOM");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_DISEASE") > 0)       if(d6() < 3)        {           UpdateVar("bPULSE_DISEASE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHELL_HOUND_FIREBREATH") > 0)       if(d6() < 3)        {           UpdateVar("bHELL_HOUND_FIREBREATH");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_PETRIFY") > 0)        if(d6() < 3)        {           UpdateVar("bGAZE_PETRIFY");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAA_HAIL_OF_ARROWS") > 0)       if(d6() < 3)        {           UpdateVar("bAA_HAIL_OF_ARROWS");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_FEAR") > 0)         if(d6() < 3)        {           UpdateVar("bDRAGON_FEAR");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAS_GHOSTLY_VISAGE") > 0)       if(d6() < 3)        {           UpdateVar("bAS_GHOSTLY_VISAGE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_FEAR") > 0)       if(d6() < 3)        {           UpdateVar("bHOWL_FEAR");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAS_INVISIBILITY") > 0)         if(d6() < 3)        {           UpdateVar("bAS_INVISIBILITY");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAS_IMPROVED_INVISIBLITY") > 0)         if(d6() < 3)        {           UpdateVar("bAS_IMPROVED_INVISIBLITY");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSUMMON_FAMILIAR") > 0)         if(d6() < 3)        {           UpdateVar("bSUMMON_FAMILIAR");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_DEATH") > 0)      if(d6() < 3)        {           UpdateVar("bBOLT_DEATH");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBREATH_PETRIFY") > 0)      if(d6() < 3)        {           UpdateVar("bBREATH_PETRIFY");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_FEAR") > 0)       if(d6() < 3)        {           UpdateVar("bAURA_FEAR");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bEMPTY_BODY") > 0)      if(d6() < 3)        {           UpdateVar("bEMPTY_BODY");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DOMINATE") > 0)       if(d6() < 3)        {           UpdateVar("bGAZE_DOMINATE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_WHIRLWIND") > 0)         if(d6() < 3)        {           UpdateVar("bPULSE_WHIRLWIND");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bLESSER_BODY_ADJUSTMENT") > 0)      if(d6() < 3)        {           UpdateVar("bLESSER_BODY_ADJUSTMENT");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bMEPHIT_SALT_BREATH") > 0)      if(d6() < 3)        {           UpdateVar("bMEPHIT_SALT_BREATH");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_LEVEL_DRAIN") > 0)       if(d6() < 3)        {           UpdateVar("bPULSE_LEVEL_DRAIN");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGOLEM_BREATH_GAS") > 0)        if(d6() < 3)        {           UpdateVar("bGOLEM_BREATH_GAS");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_FIRE") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_FIRE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_DEATH") > 0)      if(d6() < 3)        {           UpdateVar("bHOWL_DEATH");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_PARALYSIS") > 0)      if(d6() < 3)        {           UpdateVar("bHOWL_PARALYSIS");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPM_SUMMON_GREATER_UNDEAD") > 0)        if(d6() < 3)        {           UpdateVar("bPM_SUMMON_GREATER_UNDEAD");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_DAZE") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_DAZE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bTURN_UNDEAD") > 0)         if(d6() < 3)        {           UpdateVar("bTURN_UNDEAD");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_NEGATIVE") > 0)      if(d6() < 3)        {           UpdateVar("bPULSE_NEGATIVE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bACTIVATE_ITEM") > 0)       if(d6() < 3)        {           UpdateVar("bACTIVATE_ITEM");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_HOLY") > 0)      if(d6() < 3)        {           UpdateVar("bPULSE_HOLY");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSMOKE_CLAW") > 0)      if(d6() < 3)        {           UpdateVar("bSMOKE_CLAW");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDIVINE_STRENGTH") > 0)         if(d6() < 3)        {           UpdateVar("bDIVINE_STRENGTH");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_WISDOM") > 0)      if(d6() < 3)        {           UpdateVar("bPULSE_ABILITY_DRAIN_WISDOM");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bNEGATIVE_PLANE_AVATAR") > 0)       if(d6() < 3)        {           UpdateVar("bNEGATIVE_PLANE_AVATAR");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_ACID") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_ACID");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bMINDBLAST") > 0)       if(d6() < 3)        {           UpdateVar("bMINDBLAST");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_WISDOM") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_ABILITY_DRAIN_WISDOM");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_SLEEP") > 0)         if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_SLEEP");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBG_CREATEDEAD") > 0)       if(d6() < 3)        {           UpdateVar("bBG_CREATEDEAD");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBG_BULLS_STRENGTH") > 0)       if(d6() < 3)        {           UpdateVar("bBG_BULLS_STRENGTH");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBATTLE_MASTERY") > 0)      if(d6() < 3)        {           UpdateVar("bBATTLE_MASTERY");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSUMMON_ANIMAL_COMPANION") > 0)         if(d6() < 3)        {           UpdateVar("bSUMMON_ANIMAL_COMPANION");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDETECT_EVIL") > 0)         if(d6() < 3)        {           UpdateVar("bDETECT_EVIL");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bWHOLENESS_OF_BODY") > 0)       if(d6() < 3)        {           UpdateVar("bWHOLENESS_OF_BODY");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DAZE") > 0)       if(d6() < 3)        {           UpdateVar("bGAZE_DAZE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bTYRANT_FOG_MIST") > 0)         if(d6() < 3)        {           UpdateVar("bTYRANT_FOG_MIST");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bKRENSHAR_SCARE") > 0)      if(d6() < 3)        {           UpdateVar("bKRENSHAR_SCARE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_NEGATIVE") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_NEGATIVE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_STUN") > 0)       if(d6() < 3)        {           UpdateVar("bAURA_STUN");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_PROTECTION") > 0)         if(d6() < 3)        {           UpdateVar("bAURA_PROTECTION");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_GAS") > 0)       if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_GAS");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_STUN") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_STUN");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_PARALYSIS") > 0)      if(d6() < 3)        {           UpdateVar("bGAZE_PARALYSIS");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_SONIC") > 0)      if(d6() < 3)        {           UpdateVar("bHOWL_SONIC");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCONE_LIGHTNING") > 0)      if(d6() < 3)        {           UpdateVar("bCONE_LIGHTNING");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bROGUES_CUNNING") > 0)      if(d6() < 3)        {           UpdateVar("bROGUES_CUNNING");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bREMOVE_DISEASE") > 0)      if(d6() < 3)        {           UpdateVar("bREMOVE_DISEASE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_GOOD") > 0)       if(d6() < 3)        {           UpdateVar("bGAZE_DESTROY_GOOD");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bINTENSITY_3") > 0)         if(d6() < 3)        {           UpdateVar("bINTENSITY_3");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bINTENSITY_2") > 0)         if(d6() < 3)        {           UpdateVar("bINTENSITY_2");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bINTENSITY_1") > 0)         if(d6() < 3)        {           UpdateVar("bINTENSITY_1");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCONE_SONIC") > 0)      if(d6() < 3)        {           UpdateVar("bCONE_SONIC");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_STUN") > 0)       if(d6() < 3)        {           UpdateVar("bHOWL_STUN");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBG_INFLICT_SERIOUS_WOUNDS") > 0)       if(d6() < 3)        {           UpdateVar("bBG_INFLICT_SERIOUS_WOUNDS");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCONE_ACID") > 0)       if(d6() < 3)        {           UpdateVar("bCONE_ACID");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bQUIVERING_PALM") > 0)      if(d6() < 3)        {           UpdateVar("bQUIVERING_PALM");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_WEAKEN") > 0)        if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_WEAKEN");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_ELECTRICITY") > 0)        if(d6() < 3)        {           UpdateVar("bAURA_ELECTRICITY");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CONSTITUTION") > 0)        if(d6() < 3)        {           UpdateVar("bPULSE_ABILITY_DRAIN_CONSTITUTION");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_CONFUSE") > 0)        if(d6() < 3)        {           UpdateVar("bHOWL_CONFUSE");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_LEVEL_DRAIN") > 0)        if(d6() < 3)        {           UpdateVar("bBOLT_LEVEL_DRAIN");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_COLD") > 0)       if(d6() < 3)        {           UpdateVar("bAURA_COLD");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_DEATH") > 0)         if(d6() < 3)        {           UpdateVar("bPULSE_DEATH");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_CHARM") > 0)      if(d6() < 3)        {           UpdateVar("bBOLT_CHARM");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_SLOW") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_SLOW");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_CONFUSE") > 0)        if(d6() < 3)        {           UpdateVar("bBOLT_CONFUSE");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bHOWL_DAZE") > 0)       if(d6() < 3)        {           UpdateVar("bHOWL_DAZE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBARBARIAN_RAGE") > 0)      if(d6() < 3)        {           UpdateVar("bBARBARIAN_RAGE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSEAHAG_EVILEYE") > 0)      if(d6() < 3)        {           UpdateVar("bSEAHAG_EVILEYE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_CHAOS") > 0)      if(d6() < 3)        {           UpdateVar("bGAZE_DESTROY_CHAOS");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAS_DARKNESS") > 0)         if(d6() < 3)        {           UpdateVar("bAS_DARKNESS");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_BLINDING") > 0)       if(d6() < 3)        {           UpdateVar("bAURA_BLINDING");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_SPORES") > 0)        if(d6() < 3)        {           UpdateVar("bPULSE_SPORES");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DEATH") > 0)      if(d6() < 3)        {           UpdateVar("bGAZE_DEATH");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_COLD") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_COLD");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_MENACE") > 0)         if(d6() < 3)        {           UpdateVar("bAURA_MENACE");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSUMMON_CELESTIAL") > 0)        if(d6() < 3)        {           UpdateVar("bSUMMON_CELESTIAL");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPM_UNDEAD_GRAFT_2") > 0)       if(d6() < 3)        {           UpdateVar("bPM_UNDEAD_GRAFT_2");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_FIRE") > 0)       if(d6() < 3)        {           UpdateVar("bAURA_FIRE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ACID") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_ACID");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bRAGE_3") > 0)      if(d6() < 3)        {           UpdateVar("bRAGE_3");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bRAGE_4") > 0)      if(d6() < 3)        {           UpdateVar("bRAGE_4");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_COLD") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_COLD");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bFEROCITY_2") > 0)      if(d6() < 3)        {           UpdateVar("bFEROCITY_2");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bFEROCITY_3") > 0)      if(d6() < 3)        {           UpdateVar("bFEROCITY_3");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCOMMAND_THE_HORDE") > 0)       if(d6() < 3)        {           UpdateVar("bCOMMAND_THE_HORDE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_INTELLIGENCE") > 0)        if(d6() < 3)        {           UpdateVar("bPULSE_ABILITY_DRAIN_INTELLIGENCE");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDIVINE_PROTECTION") > 0)       if(d6() < 3)        {           UpdateVar("bDIVINE_PROTECTION");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bFEROCITY_1") > 0)      if(d6() < 3)        {           UpdateVar("bFEROCITY_1");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAURA_HORRIFICAPPEARANCE") > 0)         if(d6() < 3)        {           UpdateVar("bAURA_HORRIFICAPPEARANCE");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDIVINE_TRICKERY") > 0)         if(d6() < 3)        {           UpdateVar("bDIVINE_TRICKERY");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_FIRE") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_BREATH_FIRE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_FIRE") > 0)      if(d6() < 3)        {           UpdateVar("bPULSE_FIRE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bMUMMY_BOLSTER_UNDEAD") > 0)        if(d6() < 3)        {           UpdateVar("bMUMMY_BOLSTER_UNDEAD");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_KNOCKDOWN") > 0)      if(d6() < 3)        {           UpdateVar("bBOLT_KNOCKDOWN");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bMANTICORE_SPIKES") > 0)        if(d6() < 3)        {           UpdateVar("bMANTICORE_SPIKES");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DOOM") > 0)       if(d6() < 3)        {           UpdateVar("bGAZE_DOOM");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAA_IMBUE_ARROW") > 0)      if(d6() < 3)        {           UpdateVar("bAA_IMBUE_ARROW");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_LAW") > 0)        if(d6() < 3)        {           UpdateVar("bGAZE_DESTROY_LAW");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bMEPHIT_STEAM_BREATH") > 0)         if(d6() < 3)        {           UpdateVar("bMEPHIT_STEAM_BREATH");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPM_SUMMON_UNDEAD") > 0)        if(d6() < 3)        {           UpdateVar("bPM_SUMMON_UNDEAD");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bWHIRLWIND") > 0)       if(d6() < 3)        {           UpdateVar("bWHIRLWIND");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CONSTITUTION") > 0)         if(d6() < 3)        {           UpdateVar("bBOLT_ABILITY_DRAIN_CONSTITUTION");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bEPIC_SHAPE_DRAGON") > 0)       if(d6() < 3)        {           UpdateVar("bEPIC_SHAPE_DRAGON");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPM_ANIMATE_DEAD") > 0)         if(d6() < 3)        {           UpdateVar("bPM_ANIMATE_DEAD");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_DISEASE") > 0)        if(d6() < 3)        {           UpdateVar("bBOLT_DISEASE");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_STUNNED") > 0)        if(d6() < 3)        {           UpdateVar("bGAZE_STUNNED");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_DOMINATE") > 0)       if(d6() < 3)        {           UpdateVar("bBOLT_DOMINATE");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDC_DIVINE_WRATH") > 0)         if(d6() < 3)        {           UpdateVar("bDC_DIVINE_WRATH");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bSMITE_EVIL") > 0)      if(d6() < 3)        {           UpdateVar("bSMITE_EVIL");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bGAZE_CHARM") > 0)      if(d6() < 3)        {           UpdateVar("bGAZE_CHARM");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bDRAGON_WING_BUFFET") > 0)      if(d6() < 3)        {           UpdateVar("bDRAGON_WING_BUFFET");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bWILD_SHAPE") > 0)      if(d6() < 3)        {           UpdateVar("bWILD_SHAPE");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBG_INFLICT_CRITICAL_WOUNDS") > 0)      if(d6() < 3)        {           UpdateVar("bBG_INFLICT_CRITICAL_WOUNDS");           MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBG_FIENDISH_SERVANT") > 0)         if(d6() < 3)        {           UpdateVar("bBG_FIENDISH_SERVANT");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bEPIC_SHAPE_DRAGONKIN") > 0)        if(d6() < 3)        {           UpdateVar("bEPIC_SHAPE_DRAGONKIN");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bAA_ARROW_OF_DEATH") > 0)       if(d6() < 3)        {           UpdateVar("bAA_ARROW_OF_DEATH");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPM_UNDEAD_GRAFT_1") > 0)       if(d6() < 3)        {           UpdateVar("bPM_UNDEAD_GRAFT_1");            MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bCONE_DISEASE") > 0)        if(d6() < 3)        {           UpdateVar("bCONE_DISEASE");             MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CHARISMA") > 0)         if(d6() < 3)        {           UpdateVar("bBOLT_ABILITY_DRAIN_CHARISMA");          MMP_MindBlast(oTarget);             return 1;       }

    if(GetLocalInt(OBJECT_SELF,"bPULSE_POISON") > 0)        if(d6() < 3)        {           UpdateVar("bPULSE_POISON");             MMP_MindBlast(oTarget);             return 1;       }

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
