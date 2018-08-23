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
#include "inc_mmpcastsp"

void UpdateVar(string v)
{
    SetLocalInt(OBJECT_SELF,v,GetLocalInt(OBJECT_SELF,v)-1);
}



int TemplateAbility(object oTarget)
{
    if(GetLocalInt(OBJECT_SELF,"bCONE_POISON") > 0)if(d6() < 3){UpdateVar("bCONE_POISON");MMP_MindBlast(oTarget);return 1;}

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


int TEMPLATE_CastSpell(object oTarget)
{
if( GetLocalInt(OBJECT_SELF,"bSPELL_ACID_FOG") < 1 && d6() < 4) { UpdateVar("bSPELL_ACID_FOG"); ActionCastSpellAtObject(SPELL_ACID_FOG,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ACID_SPLASH") < 1 && d6() < 4) { UpdateVar("bSPELL_ACID_SPLASH"); ActionCastSpellAtObject(SPELL_ACID_SPLASH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_PORTAL") < 1 && d6() < 4) { UpdateVar("bSPELL_ACTIVATE_ITEM_PORTAL"); ActionCastSpellAtObject(SPELL_ACTIVATE_ITEM_PORTAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_SELF2") < 1 && d6() < 4) { UpdateVar("bSPELL_ACTIVATE_ITEM_SELF2"); ActionCastSpellAtObject(SPELL_ACTIVATE_ITEM_SELF2,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_AID") < 1 && d6() < 4) { UpdateVar("bSPELL_AID"); ActionCastSpellAtObject(SPELL_AID,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ALL_SPELLS") < 1 && d6() < 4) { UpdateVar("bSPELL_ALL_SPELLS"); ActionCastSpellAtObject(SPELL_ALL_SPELLS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_AMPLIFY") < 1 && d6() < 4) { UpdateVar("bSPELL_AMPLIFY"); ActionCastSpellAtObject(SPELL_AMPLIFY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ANIMATE_DEAD") < 1 && d6() < 4) { UpdateVar("bSPELL_ANIMATE_DEAD"); ActionCastSpellAtObject(SPELL_ANIMATE_DEAD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_AURA_OF_VITALITY") < 1 && d6() < 4) { UpdateVar("bSPELL_AURA_OF_VITALITY"); ActionCastSpellAtObject(SPELL_AURA_OF_VITALITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_AURAOFGLORY") < 1 && d6() < 4) { UpdateVar("bSPELL_AURAOFGLORY"); ActionCastSpellAtObject(SPELL_AURAOFGLORY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_AWAKEN") < 1 && d6() < 4) { UpdateVar("bSPELL_AWAKEN"); ActionCastSpellAtObject(SPELL_AWAKEN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BALAGARNSIRONHORN") < 1 && d6() < 4) { UpdateVar("bSPELL_BALAGARNSIRONHORN"); ActionCastSpellAtObject(SPELL_BALAGARNSIRONHORN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BALL_LIGHTNING") < 1 && d6() < 4) { UpdateVar("bSPELL_BALL_LIGHTNING"); ActionCastSpellAtObject(SPELL_BALL_LIGHTNING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BANE") < 1 && d6() < 4) { UpdateVar("bSPELL_BANE"); ActionCastSpellAtObject(SPELL_BANE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BANISHMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_BANISHMENT"); ActionCastSpellAtObject(SPELL_BANISHMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BARKSKIN") < 1 && d6() < 4) { UpdateVar("bSPELL_BARKSKIN"); ActionCastSpellAtObject(SPELL_BARKSKIN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BATTLETIDE") < 1 && d6() < 4) { UpdateVar("bSPELL_BATTLETIDE"); ActionCastSpellAtObject(SPELL_BATTLETIDE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BESTOW_CURSE") < 1 && d6() < 4) { UpdateVar("bSPELL_BESTOW_CURSE"); ActionCastSpellAtObject(SPELL_BESTOW_CURSE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CLENCHED_FIST") < 1 && d6() < 4) { UpdateVar("bSPELL_BIGBYS_CLENCHED_FIST"); ActionCastSpellAtObject(SPELL_BIGBYS_CLENCHED_FIST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CRUSHING_HAND") < 1 && d6() < 4) { UpdateVar("bSPELL_BIGBYS_CRUSHING_HAND"); ActionCastSpellAtObject(SPELL_BIGBYS_CRUSHING_HAND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_FORCEFUL_HAND") < 1 && d6() < 4) { UpdateVar("bSPELL_BIGBYS_FORCEFUL_HAND"); ActionCastSpellAtObject(SPELL_BIGBYS_FORCEFUL_HAND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_GRASPING_HAND") < 1 && d6() < 4) { UpdateVar("bSPELL_BIGBYS_GRASPING_HAND"); ActionCastSpellAtObject(SPELL_BIGBYS_GRASPING_HAND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_INTERPOSING_HAND") < 1 && d6() < 4) { UpdateVar("bSPELL_BIGBYS_INTERPOSING_HAND"); ActionCastSpellAtObject(SPELL_BIGBYS_INTERPOSING_HAND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLACK_BLADE_OF_DISASTER") < 1 && d6() < 4) { UpdateVar("bSPELL_BLACK_BLADE_OF_DISASTER"); ActionCastSpellAtObject(SPELL_BLACK_BLADE_OF_DISASTER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLACKSTAFF") < 1 && d6() < 4) { UpdateVar("bSPELL_BLACKSTAFF"); ActionCastSpellAtObject(SPELL_BLACKSTAFF,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLADE_BARRIER") < 1 && d6() < 4) { UpdateVar("bSPELL_BLADE_BARRIER"); ActionCastSpellAtObject(SPELL_BLADE_BARRIER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLADE_THIRST") < 1 && d6() < 4) { UpdateVar("bSPELL_BLADE_THIRST"); ActionCastSpellAtObject(SPELL_BLADE_THIRST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLESS") < 1 && d6() < 4) { UpdateVar("bSPELL_BLESS"); ActionCastSpellAtObject(SPELL_BLESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLESS_WEAPON") < 1 && d6() < 4) { UpdateVar("bSPELL_BLESS_WEAPON"); ActionCastSpellAtObject(SPELL_BLESS_WEAPON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLINDNESS_AND_DEAFNESS") < 1 && d6() < 4) { UpdateVar("bSPELL_BLINDNESS_AND_DEAFNESS"); ActionCastSpellAtObject(SPELL_BLINDNESS_AND_DEAFNESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BLOOD_FRENZY") < 1 && d6() < 4) { UpdateVar("bSPELL_BLOOD_FRENZY"); ActionCastSpellAtObject(SPELL_BLOOD_FRENZY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BOMBARDMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_BOMBARDMENT"); ActionCastSpellAtObject(SPELL_BOMBARDMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BULLS_STRENGTH") < 1 && d6() < 4) { UpdateVar("bSPELL_BULLS_STRENGTH"); ActionCastSpellAtObject(SPELL_BULLS_STRENGTH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_BURNING_HANDS") < 1 && d6() < 4) { UpdateVar("bSPELL_BURNING_HANDS"); ActionCastSpellAtObject(SPELL_BURNING_HANDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CALL_LIGHTNING") < 1 && d6() < 4) { UpdateVar("bSPELL_CALL_LIGHTNING"); ActionCastSpellAtObject(SPELL_CALL_LIGHTNING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CAMOFLAGE") < 1 && d6() < 4) { UpdateVar("bSPELL_CAMOFLAGE"); ActionCastSpellAtObject(SPELL_CAMOFLAGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CATS_GRACE") < 1 && d6() < 4) { UpdateVar("bSPELL_CATS_GRACE"); ActionCastSpellAtObject(SPELL_CATS_GRACE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CHAIN_LIGHTNING") < 1 && d6() < 4) { UpdateVar("bSPELL_CHAIN_LIGHTNING"); ActionCastSpellAtObject(SPELL_CHAIN_LIGHTNING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARGER") < 1 && d6() < 4) { UpdateVar("bSPELL_CHARGER"); ActionCastSpellAtObject(SPELL_CHARGER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_MONSTER") < 1 && d6() < 4) { UpdateVar("bSPELL_CHARM_MONSTER"); ActionCastSpellAtObject(SPELL_CHARM_MONSTER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON") < 1 && d6() < 4) { UpdateVar("bSPELL_CHARM_PERSON"); ActionCastSpellAtObject(SPELL_CHARM_PERSON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON_OR_ANIMAL") < 1 && d6() < 4) { UpdateVar("bSPELL_CHARM_PERSON_OR_ANIMAL"); ActionCastSpellAtObject(SPELL_CHARM_PERSON_OR_ANIMAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DEATH") < 1 && d6() < 4) { UpdateVar("bSPELL_CIRCLE_OF_DEATH"); ActionCastSpellAtObject(SPELL_CIRCLE_OF_DEATH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DOOM") < 1 && d6() < 4) { UpdateVar("bSPELL_CIRCLE_OF_DOOM"); ActionCastSpellAtObject(SPELL_CIRCLE_OF_DOOM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE"); ActionCastSpellAtObject(SPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CLARITY") < 1 && d6() < 4) { UpdateVar("bSPELL_CLARITY"); ActionCastSpellAtObject(SPELL_CLARITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CLOAK_OF_CHAOS") < 1 && d6() < 4) { UpdateVar("bSPELL_CLOAK_OF_CHAOS"); ActionCastSpellAtObject(SPELL_CLOAK_OF_CHAOS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CLOUD_OF_BEWILDERMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_CLOUD_OF_BEWILDERMENT"); ActionCastSpellAtObject(SPELL_CLOUD_OF_BEWILDERMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CLOUDKILL") < 1 && d6() < 4) { UpdateVar("bSPELL_CLOUDKILL"); ActionCastSpellAtObject(SPELL_CLOUDKILL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_COLOR_SPRAY") < 1 && d6() < 4) { UpdateVar("bSPELL_COLOR_SPRAY"); ActionCastSpellAtObject(SPELL_COLOR_SPRAY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_COMBUST") < 1 && d6() < 4) { UpdateVar("bSPELL_COMBUST"); ActionCastSpellAtObject(SPELL_COMBUST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CONE_OF_COLD") < 1 && d6() < 4) { UpdateVar("bSPELL_CONE_OF_COLD"); ActionCastSpellAtObject(SPELL_CONE_OF_COLD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CONFUSION") < 1 && d6() < 4) { UpdateVar("bSPELL_CONFUSION"); ActionCastSpellAtObject(SPELL_CONFUSION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CONTAGION") < 1 && d6() < 4) { UpdateVar("bSPELL_CONTAGION"); ActionCastSpellAtObject(SPELL_CONTAGION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CONTINUAL_FLAME") < 1 && d6() < 4) { UpdateVar("bSPELL_CONTINUAL_FLAME"); ActionCastSpellAtObject(SPELL_CONTINUAL_FLAME,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CONTROL_UNDEAD") < 1 && d6() < 4) { UpdateVar("bSPELL_CONTROL_UNDEAD"); ActionCastSpellAtObject(SPELL_CONTROL_UNDEAD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CRAFT_HARPER_ITEM") < 1 && d6() < 4) { UpdateVar("bSPELL_CRAFT_HARPER_ITEM"); ActionCastSpellAtObject(SPELL_CRAFT_HARPER_ITEM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CREATE_GREATER_UNDEAD") < 1 && d6() < 4) { UpdateVar("bSPELL_CREATE_GREATER_UNDEAD"); ActionCastSpellAtObject(SPELL_CREATE_GREATER_UNDEAD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CREATE_UNDEAD") < 1 && d6() < 4) { UpdateVar("bSPELL_CREATE_UNDEAD"); ActionCastSpellAtObject(SPELL_CREATE_UNDEAD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CREEPING_DOOM") < 1 && d6() < 4) { UpdateVar("bSPELL_CREEPING_DOOM"); ActionCastSpellAtObject(SPELL_CREEPING_DOOM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CRUMBLE") < 1 && d6() < 4) { UpdateVar("bSPELL_CRUMBLE"); ActionCastSpellAtObject(SPELL_CRUMBLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_CRITICAL_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_CURE_CRITICAL_WOUNDS"); ActionCastSpellAtObject(SPELL_CURE_CRITICAL_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_LIGHT_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_CURE_LIGHT_WOUNDS"); ActionCastSpellAtObject(SPELL_CURE_LIGHT_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_MINOR_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_CURE_MINOR_WOUNDS"); ActionCastSpellAtObject(SPELL_CURE_MINOR_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_MODERATE_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_CURE_MODERATE_WOUNDS"); ActionCastSpellAtObject(SPELL_CURE_MODERATE_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_SERIOUS_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_CURE_SERIOUS_WOUNDS"); ActionCastSpellAtObject(SPELL_CURE_SERIOUS_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DARKFIRE") < 1 && d6() < 4) { UpdateVar("bSPELL_DARKFIRE"); ActionCastSpellAtObject(SPELL_DARKFIRE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DARKNESS") < 1 && d6() < 4) { UpdateVar("bSPELL_DARKNESS"); ActionCastSpellAtObject(SPELL_DARKNESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DARKVISION") < 1 && d6() < 4) { UpdateVar("bSPELL_DARKVISION"); ActionCastSpellAtObject(SPELL_DARKVISION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DAZE") < 1 && d6() < 4) { UpdateVar("bSPELL_DAZE"); ActionCastSpellAtObject(SPELL_DAZE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DEAFENING_CLANG") < 1 && d6() < 4) { UpdateVar("bSPELL_DEAFENING_CLANG"); ActionCastSpellAtObject(SPELL_DEAFENING_CLANG,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DEATH_ARMOR") < 1 && d6() < 4) { UpdateVar("bSPELL_DEATH_ARMOR"); ActionCastSpellAtObject(SPELL_DEATH_ARMOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DEATH_WARD") < 1 && d6() < 4) { UpdateVar("bSPELL_DEATH_WARD"); ActionCastSpellAtObject(SPELL_DEATH_WARD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DECHARGER") < 1 && d6() < 4) { UpdateVar("bSPELL_DECHARGER"); ActionCastSpellAtObject(SPELL_DECHARGER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_AVATAR") < 1 && d6() < 4) { UpdateVar("bSPELL_DECK_AVATAR"); ActionCastSpellAtObject(SPELL_DECK_AVATAR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_BUTTERFLYSPRAY") < 1 && d6() < 4) { UpdateVar("bSPELL_DECK_BUTTERFLYSPRAY"); ActionCastSpellAtObject(SPELL_DECK_BUTTERFLYSPRAY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_GEMSPRAY") < 1 && d6() < 4) { UpdateVar("bSPELL_DECK_GEMSPRAY"); ActionCastSpellAtObject(SPELL_DECK_GEMSPRAY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_OF_MANY_THINGS") < 1 && d6() < 4) { UpdateVar("bSPELL_DECK_OF_MANY_THINGS"); ActionCastSpellAtObject(SPELL_DECK_OF_MANY_THINGS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DELAYED_BLAST_FIREBALL") < 1 && d6() < 4) { UpdateVar("bSPELL_DELAYED_BLAST_FIREBALL"); ActionCastSpellAtObject(SPELL_DELAYED_BLAST_FIREBALL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DESTRUCTION") < 1 && d6() < 4) { UpdateVar("bSPELL_DESTRUCTION"); ActionCastSpellAtObject(SPELL_DESTRUCTION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DIRGE") < 1 && d6() < 4) { UpdateVar("bSPELL_DIRGE"); ActionCastSpellAtObject(SPELL_DIRGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DISMISSAL") < 1 && d6() < 4) { UpdateVar("bSPELL_DISMISSAL"); ActionCastSpellAtObject(SPELL_DISMISSAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DISPEL_MAGIC") < 1 && d6() < 4) { UpdateVar("bSPELL_DISPEL_MAGIC"); ActionCastSpellAtObject(SPELL_DISPEL_MAGIC,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DISPLACEMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_DISPLACEMENT"); ActionCastSpellAtObject(SPELL_DISPLACEMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_FAVOR") < 1 && d6() < 4) { UpdateVar("bSPELL_DIVINE_FAVOR"); ActionCastSpellAtObject(SPELL_DIVINE_FAVOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_MIGHT") < 1 && d6() < 4) { UpdateVar("bSPELL_DIVINE_MIGHT"); ActionCastSpellAtObject(SPELL_DIVINE_MIGHT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_POWER") < 1 && d6() < 4) { UpdateVar("bSPELL_DIVINE_POWER"); ActionCastSpellAtObject(SPELL_DIVINE_POWER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_SHIELD") < 1 && d6() < 4) { UpdateVar("bSPELL_DIVINE_SHIELD"); ActionCastSpellAtObject(SPELL_DIVINE_SHIELD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_ANIMAL") < 1 && d6() < 4) { UpdateVar("bSPELL_DOMINATE_ANIMAL"); ActionCastSpellAtObject(SPELL_DOMINATE_ANIMAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_MONSTER") < 1 && d6() < 4) { UpdateVar("bSPELL_DOMINATE_MONSTER"); ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_PERSON") < 1 && d6() < 4) { UpdateVar("bSPELL_DOMINATE_PERSON"); ActionCastSpellAtObject(SPELL_DOMINATE_PERSON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DOOM") < 1 && d6() < 4) { UpdateVar("bSPELL_DOOM"); ActionCastSpellAtObject(SPELL_DOOM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_DROWN") < 1 && d6() < 4) { UpdateVar("bSPELL_DROWN"); ActionCastSpellAtObject(SPELL_DROWN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EAGLE_SPLEDOR") < 1 && d6() < 4) { UpdateVar("bSPELL_EAGLE_SPLEDOR"); ActionCastSpellAtObject(SPELL_EAGLE_SPLEDOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EARTHQUAKE") < 1 && d6() < 4) { UpdateVar("bSPELL_EARTHQUAKE"); ActionCastSpellAtObject(SPELL_EARTHQUAKE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ELECTRIC_JOLT") < 1 && d6() < 4) { UpdateVar("bSPELL_ELECTRIC_JOLT"); ActionCastSpellAtObject(SPELL_ELECTRIC_JOLT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SHIELD") < 1 && d6() < 4) { UpdateVar("bSPELL_ELEMENTAL_SHIELD"); ActionCastSpellAtObject(SPELL_ELEMENTAL_SHIELD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SUMMONING_ITEM") < 1 && d6() < 4) { UpdateVar("bSPELL_ELEMENTAL_SUMMONING_ITEM"); ActionCastSpellAtObject(SPELL_ELEMENTAL_SUMMONING_ITEM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SWARM") < 1 && d6() < 4) { UpdateVar("bSPELL_ELEMENTAL_SWARM"); ActionCastSpellAtObject(SPELL_ELEMENTAL_SWARM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENDURANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_ENDURANCE"); ActionCastSpellAtObject(SPELL_ENDURANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENDURE_ELEMENTS") < 1 && d6() < 4) { UpdateVar("bSPELL_ENDURE_ELEMENTS"); ActionCastSpellAtObject(SPELL_ENDURE_ELEMENTS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_BUFFER") < 1 && d6() < 4) { UpdateVar("bSPELL_ENERGY_BUFFER"); ActionCastSpellAtObject(SPELL_ENERGY_BUFFER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_DRAIN") < 1 && d6() < 4) { UpdateVar("bSPELL_ENERGY_DRAIN"); ActionCastSpellAtObject(SPELL_ENERGY_DRAIN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENERVATION") < 1 && d6() < 4) { UpdateVar("bSPELL_ENERVATION"); ActionCastSpellAtObject(SPELL_ENERVATION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENTANGLE") < 1 && d6() < 4) { UpdateVar("bSPELL_ENTANGLE"); ActionCastSpellAtObject(SPELL_ENTANGLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ENTROPIC_SHIELD") < 1 && d6() < 4) { UpdateVar("bSPELL_ENTROPIC_SHIELD"); ActionCastSpellAtObject(SPELL_ENTROPIC_SHIELD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_DRAGON_KNIGHT") < 1 && d6() < 4) { UpdateVar("bSPELL_EPIC_DRAGON_KNIGHT"); ActionCastSpellAtObject(SPELL_EPIC_DRAGON_KNIGHT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_HELLBALL") < 1 && d6() < 4) { UpdateVar("bSPELL_EPIC_HELLBALL"); ActionCastSpellAtObject(SPELL_EPIC_HELLBALL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MAGE_ARMOR") < 1 && d6() < 4) { UpdateVar("bSPELL_EPIC_MAGE_ARMOR"); ActionCastSpellAtObject(SPELL_EPIC_MAGE_ARMOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MUMMY_DUST") < 1 && d6() < 4) { UpdateVar("bSPELL_EPIC_MUMMY_DUST"); ActionCastSpellAtObject(SPELL_EPIC_MUMMY_DUST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_RUIN") < 1 && d6() < 4) { UpdateVar("bSPELL_EPIC_RUIN"); ActionCastSpellAtObject(SPELL_EPIC_RUIN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ETHEREAL_VISAGE") < 1 && d6() < 4) { UpdateVar("bSPELL_ETHEREAL_VISAGE"); ActionCastSpellAtObject(SPELL_ETHEREAL_VISAGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ETHEREALNESS") < 1 && d6() < 4) { UpdateVar("bSPELL_ETHEREALNESS"); ActionCastSpellAtObject(SPELL_ETHEREALNESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EVARDS_BLACK_TENTACLES") < 1 && d6() < 4) { UpdateVar("bSPELL_EVARDS_BLACK_TENTACLES"); ActionCastSpellAtObject(SPELL_EVARDS_BLACK_TENTACLES,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_EXPEDITIOUS_RETREAT") < 1 && d6() < 4) { UpdateVar("bSPELL_EXPEDITIOUS_RETREAT"); ActionCastSpellAtObject(SPELL_EXPEDITIOUS_RETREAT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FEAR") < 1 && d6() < 4) { UpdateVar("bSPELL_FEAR"); ActionCastSpellAtObject(SPELL_FEAR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FEEBLEMIND") < 1 && d6() < 4) { UpdateVar("bSPELL_FEEBLEMIND"); ActionCastSpellAtObject(SPELL_FEEBLEMIND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FIND_TRAPS") < 1 && d6() < 4) { UpdateVar("bSPELL_FIND_TRAPS"); ActionCastSpellAtObject(SPELL_FIND_TRAPS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FINGER_OF_DEATH") < 1 && d6() < 4) { UpdateVar("bSPELL_FINGER_OF_DEATH"); ActionCastSpellAtObject(SPELL_FINGER_OF_DEATH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FIRE_STORM") < 1 && d6() < 4) { UpdateVar("bSPELL_FIRE_STORM"); ActionCastSpellAtObject(SPELL_FIRE_STORM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FIREBALL") < 1 && d6() < 4) { UpdateVar("bSPELL_FIREBALL"); ActionCastSpellAtObject(SPELL_FIREBALL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FIREBRAND") < 1 && d6() < 4) { UpdateVar("bSPELL_FIREBRAND"); ActionCastSpellAtObject(SPELL_FIREBRAND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_ARROW") < 1 && d6() < 4) { UpdateVar("bSPELL_FLAME_ARROW"); ActionCastSpellAtObject(SPELL_FLAME_ARROW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_LASH") < 1 && d6() < 4) { UpdateVar("bSPELL_FLAME_LASH"); ActionCastSpellAtObject(SPELL_FLAME_LASH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_STRIKE") < 1 && d6() < 4) { UpdateVar("bSPELL_FLAME_STRIKE"); ActionCastSpellAtObject(SPELL_FLAME_STRIKE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_WEAPON") < 1 && d6() < 4) { UpdateVar("bSPELL_FLAME_WEAPON"); ActionCastSpellAtObject(SPELL_FLAME_WEAPON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLARE") < 1 && d6() < 4) { UpdateVar("bSPELL_FLARE"); ActionCastSpellAtObject(SPELL_FLARE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLESH_TO_STONE") < 1 && d6() < 4) { UpdateVar("bSPELL_FLESH_TO_STONE"); ActionCastSpellAtObject(SPELL_FLESH_TO_STONE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FLYING_DEBRIS") < 1 && d6() < 4) { UpdateVar("bSPELL_FLYING_DEBRIS"); ActionCastSpellAtObject(SPELL_FLYING_DEBRIS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FOXS_CUNNING") < 1 && d6() < 4) { UpdateVar("bSPELL_FOXS_CUNNING"); ActionCastSpellAtObject(SPELL_FOXS_CUNNING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_FREEDOM_OF_MOVEMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_FREEDOM_OF_MOVEMENT"); ActionCastSpellAtObject(SPELL_FREEDOM_OF_MOVEMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GATE") < 1 && d6() < 4) { UpdateVar("bSPELL_GATE"); ActionCastSpellAtObject(SPELL_GATE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GEDLEES_ELECTRIC_LOOP") < 1 && d6() < 4) { UpdateVar("bSPELL_GEDLEES_ELECTRIC_LOOP"); ActionCastSpellAtObject(SPELL_GEDLEES_ELECTRIC_LOOP,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GHOSTLY_VISAGE") < 1 && d6() < 4) { UpdateVar("bSPELL_GHOSTLY_VISAGE"); ActionCastSpellAtObject(SPELL_GHOSTLY_VISAGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GHOUL_TOUCH") < 1 && d6() < 4) { UpdateVar("bSPELL_GHOUL_TOUCH"); ActionCastSpellAtObject(SPELL_GHOUL_TOUCH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GLOBE_OF_INVULNERABILITY") < 1 && d6() < 4) { UpdateVar("bSPELL_GLOBE_OF_INVULNERABILITY"); ActionCastSpellAtObject(SPELL_GLOBE_OF_INVULNERABILITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GLYPH_OF_WARDING") < 1 && d6() < 4) { UpdateVar("bSPELL_GLYPH_OF_WARDING"); ActionCastSpellAtObject(SPELL_GLYPH_OF_WARDING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREASE") < 1 && d6() < 4) { UpdateVar("bSPELL_GREASE"); ActionCastSpellAtObject(SPELL_GREASE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREAT_THUNDERCLAP") < 1 && d6() < 4) { UpdateVar("bSPELL_GREAT_THUNDERCLAP"); ActionCastSpellAtObject(SPELL_GREAT_THUNDERCLAP,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_BULLS_STRENGTH") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_BULLS_STRENGTH"); ActionCastSpellAtObject(SPELL_GREATER_BULLS_STRENGTH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_CATS_GRACE") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_CATS_GRACE"); ActionCastSpellAtObject(SPELL_GREATER_CATS_GRACE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_DISPELLING") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_DISPELLING"); ActionCastSpellAtObject(SPELL_GREATER_DISPELLING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_EAGLE_SPLENDOR") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_EAGLE_SPLENDOR"); ActionCastSpellAtObject(SPELL_GREATER_EAGLE_SPLENDOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_ENDURANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_ENDURANCE"); ActionCastSpellAtObject(SPELL_GREATER_ENDURANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_FOXS_CUNNING") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_FOXS_CUNNING"); ActionCastSpellAtObject(SPELL_GREATER_FOXS_CUNNING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_FANG") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_MAGIC_FANG"); ActionCastSpellAtObject(SPELL_GREATER_MAGIC_FANG,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_WEAPON") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_MAGIC_WEAPON"); ActionCastSpellAtObject(SPELL_GREATER_MAGIC_WEAPON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_OWLS_WISDOM") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_OWLS_WISDOM"); ActionCastSpellAtObject(SPELL_GREATER_OWLS_WISDOM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_PLANAR_BINDING") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_PLANAR_BINDING"); ActionCastSpellAtObject(SPELL_GREATER_PLANAR_BINDING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_RESTORATION") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_RESTORATION"); ActionCastSpellAtObject(SPELL_GREATER_RESTORATION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW"); ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE"); ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE"); ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW"); ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_WEB") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_WEB"); ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_WEB,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_BREACH") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SPELL_BREACH"); ActionCastSpellAtObject(SPELL_GREATER_SPELL_BREACH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_MANTLE") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_SPELL_MANTLE"); ActionCastSpellAtObject(SPELL_GREATER_SPELL_MANTLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_STONESKIN") < 1 && d6() < 4) { UpdateVar("bSPELL_GREATER_STONESKIN"); ActionCastSpellAtObject(SPELL_GREATER_STONESKIN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_ACID") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_ACID"); ActionCastSpellAtObject(SPELL_GRENADE_ACID,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CALTROPS") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_CALTROPS"); ActionCastSpellAtObject(SPELL_GRENADE_CALTROPS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHICKEN") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_CHICKEN"); ActionCastSpellAtObject(SPELL_GRENADE_CHICKEN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHOKING") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_CHOKING"); ActionCastSpellAtObject(SPELL_GRENADE_CHOKING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_FIRE") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_FIRE"); ActionCastSpellAtObject(SPELL_GRENADE_FIRE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_HOLY") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_HOLY"); ActionCastSpellAtObject(SPELL_GRENADE_HOLY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_TANGLE") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_TANGLE"); ActionCastSpellAtObject(SPELL_GRENADE_TANGLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_THUNDERSTONE") < 1 && d6() < 4) { UpdateVar("bSPELL_GRENADE_THUNDERSTONE"); ActionCastSpellAtObject(SPELL_GRENADE_THUNDERSTONE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_GUST_OF_WIND") < 1 && d6() < 4) { UpdateVar("bSPELL_GUST_OF_WIND"); ActionCastSpellAtObject(SPELL_GUST_OF_WIND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HAMMER_OF_THE_GODS") < 1 && d6() < 4) { UpdateVar("bSPELL_HAMMER_OF_THE_GODS"); ActionCastSpellAtObject(SPELL_HAMMER_OF_THE_GODS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HARM") < 1 && d6() < 4) { UpdateVar("bSPELL_HARM"); ActionCastSpellAtObject(SPELL_HARM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HASTE") < 1 && d6() < 4) { UpdateVar("bSPELL_HASTE"); ActionCastSpellAtObject(SPELL_HASTE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HEAL") < 1 && d6() < 4) { UpdateVar("bSPELL_HEAL"); ActionCastSpellAtObject(SPELL_HEAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HEALING_CIRCLE") < 1 && d6() < 4) { UpdateVar("bSPELL_HEALING_CIRCLE"); ActionCastSpellAtObject(SPELL_HEALING_CIRCLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HEALING_STING") < 1 && d6() < 4) { UpdateVar("bSPELL_HEALING_STING"); ActionCastSpellAtObject(SPELL_HEALING_STING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HEALINGKIT") < 1 && d6() < 4) { UpdateVar("bSPELL_HEALINGKIT"); ActionCastSpellAtObject(SPELL_HEALINGKIT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_ANIMAL") < 1 && d6() < 4) { UpdateVar("bSPELL_HOLD_ANIMAL"); ActionCastSpellAtObject(SPELL_HOLD_ANIMAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_MONSTER") < 1 && d6() < 4) { UpdateVar("bSPELL_HOLD_MONSTER"); ActionCastSpellAtObject(SPELL_HOLD_MONSTER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_PERSON") < 1 && d6() < 4) { UpdateVar("bSPELL_HOLD_PERSON"); ActionCastSpellAtObject(SPELL_HOLD_PERSON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLY_AURA") < 1 && d6() < 4) { UpdateVar("bSPELL_HOLY_AURA"); ActionCastSpellAtObject(SPELL_HOLY_AURA,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLY_SWORD") < 1 && d6() < 4) { UpdateVar("bSPELL_HOLY_SWORD"); ActionCastSpellAtObject(SPELL_HOLY_SWORD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORIZIKAULS_BOOM") < 1 && d6() < 4) { UpdateVar("bSPELL_HORIZIKAULS_BOOM"); ActionCastSpellAtObject(SPELL_HORIZIKAULS_BOOM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORRID_WILTING") < 1 && d6() < 4) { UpdateVar("bSPELL_HORRID_WILTING"); ActionCastSpellAtObject(SPELL_HORRID_WILTING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_ASSIGN_MOUNT") < 1 && d6() < 4) { UpdateVar("bSPELL_HORSE_ASSIGN_MOUNT"); ActionCastSpellAtObject(SPELL_HORSE_ASSIGN_MOUNT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_DISMOUNT") < 1 && d6() < 4) { UpdateVar("bSPELL_HORSE_DISMOUNT"); ActionCastSpellAtObject(SPELL_HORSE_DISMOUNT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MENU") < 1 && d6() < 4) { UpdateVar("bSPELL_HORSE_MENU"); ActionCastSpellAtObject(SPELL_HORSE_MENU,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MOUNT") < 1 && d6() < 4) { UpdateVar("bSPELL_HORSE_MOUNT"); ActionCastSpellAtObject(SPELL_HORSE_MOUNT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_DISMOUNT") < 1 && d6() < 4) { UpdateVar("bSPELL_HORSE_PARTY_DISMOUNT"); ActionCastSpellAtObject(SPELL_HORSE_PARTY_DISMOUNT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_MOUNT") < 1 && d6() < 4) { UpdateVar("bSPELL_HORSE_PARTY_MOUNT"); ActionCastSpellAtObject(SPELL_HORSE_PARTY_MOUNT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ICE_DAGGER") < 1 && d6() < 4) { UpdateVar("bSPELL_ICE_DAGGER"); ActionCastSpellAtObject(SPELL_ICE_DAGGER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ICE_STORM") < 1 && d6() < 4) { UpdateVar("bSPELL_ICE_STORM"); ActionCastSpellAtObject(SPELL_ICE_STORM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IDENTIFY") < 1 && d6() < 4) { UpdateVar("bSPELL_IDENTIFY"); ActionCastSpellAtObject(SPELL_IDENTIFY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IMPLOSION") < 1 && d6() < 4) { UpdateVar("bSPELL_IMPLOSION"); ActionCastSpellAtObject(SPELL_IMPLOSION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IMPROVED_INVISIBILITY") < 1 && d6() < 4) { UpdateVar("bSPELL_IMPROVED_INVISIBILITY"); ActionCastSpellAtObject(SPELL_IMPROVED_INVISIBILITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INCENDIARY_CLOUD") < 1 && d6() < 4) { UpdateVar("bSPELL_INCENDIARY_CLOUD"); ActionCastSpellAtObject(SPELL_INCENDIARY_CLOUD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFERNO") < 1 && d6() < 4) { UpdateVar("bSPELL_INFERNO"); ActionCastSpellAtObject(SPELL_INFERNO,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFESTATION_OF_MAGGOTS") < 1 && d6() < 4) { UpdateVar("bSPELL_INFESTATION_OF_MAGGOTS"); ActionCastSpellAtObject(SPELL_INFESTATION_OF_MAGGOTS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_CRITICAL_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_INFLICT_CRITICAL_WOUNDS"); ActionCastSpellAtObject(SPELL_INFLICT_CRITICAL_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_LIGHT_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_INFLICT_LIGHT_WOUNDS"); ActionCastSpellAtObject(SPELL_INFLICT_LIGHT_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MINOR_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_INFLICT_MINOR_WOUNDS"); ActionCastSpellAtObject(SPELL_INFLICT_MINOR_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MODERATE_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_INFLICT_MODERATE_WOUNDS"); ActionCastSpellAtObject(SPELL_INFLICT_MODERATE_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_SERIOUS_WOUNDS") < 1 && d6() < 4) { UpdateVar("bSPELL_INFLICT_SERIOUS_WOUNDS"); ActionCastSpellAtObject(SPELL_INFLICT_SERIOUS_WOUNDS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY") < 1 && d6() < 4) { UpdateVar("bSPELL_INVISIBILITY"); ActionCastSpellAtObject(SPELL_INVISIBILITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_PURGE") < 1 && d6() < 4) { UpdateVar("bSPELL_INVISIBILITY_PURGE"); ActionCastSpellAtObject(SPELL_INVISIBILITY_PURGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_SPHERE") < 1 && d6() < 4) { UpdateVar("bSPELL_INVISIBILITY_SPHERE"); ActionCastSpellAtObject(SPELL_INVISIBILITY_SPHERE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_BLUE") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_BLUE"); ActionCastSpellAtObject(SPELL_IOUN_STONE_BLUE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DEEP_RED") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_DEEP_RED"); ActionCastSpellAtObject(SPELL_IOUN_STONE_DEEP_RED,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DUSTY_ROSE") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_DUSTY_ROSE"); ActionCastSpellAtObject(SPELL_IOUN_STONE_DUSTY_ROSE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PALE_BLUE") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_PALE_BLUE"); ActionCastSpellAtObject(SPELL_IOUN_STONE_PALE_BLUE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_PINK"); ActionCastSpellAtObject(SPELL_IOUN_STONE_PINK,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK_GREEN") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_PINK_GREEN"); ActionCastSpellAtObject(SPELL_IOUN_STONE_PINK_GREEN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_SCARLET_BLUE") < 1 && d6() < 4) { UpdateVar("bSPELL_IOUN_STONE_SCARLET_BLUE"); ActionCastSpellAtObject(SPELL_IOUN_STONE_SCARLET_BLUE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_IRONGUTS") < 1 && d6() < 4) { UpdateVar("bSPELL_IRONGUTS"); ActionCastSpellAtObject(SPELL_IRONGUTS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_GREATER_MISSILE_STORM") < 1 && d6() < 4) { UpdateVar("bSPELL_ISAACS_GREATER_MISSILE_STORM"); ActionCastSpellAtObject(SPELL_ISAACS_GREATER_MISSILE_STORM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_LESSER_MISSILE_STORM") < 1 && d6() < 4) { UpdateVar("bSPELL_ISAACS_LESSER_MISSILE_STORM"); ActionCastSpellAtObject(SPELL_ISAACS_LESSER_MISSILE_STORM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_KEEN_EDGE") < 1 && d6() < 4) { UpdateVar("bSPELL_KEEN_EDGE"); ActionCastSpellAtObject(SPELL_KEEN_EDGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_KNOCK") < 1 && d6() < 4) { UpdateVar("bSPELL_KNOCK"); ActionCastSpellAtObject(SPELL_KNOCK,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_KOBOLD_JUMP") < 1 && d6() < 4) { UpdateVar("bSPELL_KOBOLD_JUMP"); ActionCastSpellAtObject(SPELL_KOBOLD_JUMP,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LEGEND_LORE") < 1 && d6() < 4) { UpdateVar("bSPELL_LEGEND_LORE"); ActionCastSpellAtObject(SPELL_LEGEND_LORE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_DISPEL") < 1 && d6() < 4) { UpdateVar("bSPELL_LESSER_DISPEL"); ActionCastSpellAtObject(SPELL_LESSER_DISPEL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_MIND_BLANK") < 1 && d6() < 4) { UpdateVar("bSPELL_LESSER_MIND_BLANK"); ActionCastSpellAtObject(SPELL_LESSER_MIND_BLANK,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_PLANAR_BINDING") < 1 && d6() < 4) { UpdateVar("bSPELL_LESSER_PLANAR_BINDING"); ActionCastSpellAtObject(SPELL_LESSER_PLANAR_BINDING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_RESTORATION") < 1 && d6() < 4) { UpdateVar("bSPELL_LESSER_RESTORATION"); ActionCastSpellAtObject(SPELL_LESSER_RESTORATION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_BREACH") < 1 && d6() < 4) { UpdateVar("bSPELL_LESSER_SPELL_BREACH"); ActionCastSpellAtObject(SPELL_LESSER_SPELL_BREACH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_MANTLE") < 1 && d6() < 4) { UpdateVar("bSPELL_LESSER_SPELL_MANTLE"); ActionCastSpellAtObject(SPELL_LESSER_SPELL_MANTLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LIGHT") < 1 && d6() < 4) { UpdateVar("bSPELL_LIGHT"); ActionCastSpellAtObject(SPELL_LIGHT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_LIGHTNING_BOLT") < 1 && d6() < 4) { UpdateVar("bSPELL_LIGHTNING_BOLT"); ActionCastSpellAtObject(SPELL_LIGHTNING_BOLT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGE_ARMOR") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGE_ARMOR"); ActionCastSpellAtObject(SPELL_MAGE_ARMOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_CHAOS") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_CHAOS"); ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_CHAOS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_EVIL") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_EVIL"); ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_EVIL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_GOOD") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_GOOD"); ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_GOOD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_LAW") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_LAW"); ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_LAW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_FANG") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_FANG"); ActionCastSpellAtObject(SPELL_MAGIC_FANG,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_MISSILE") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_MISSILE"); ActionCastSpellAtObject(SPELL_MAGIC_MISSILE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_VESTMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_VESTMENT"); ActionCastSpellAtObject(SPELL_MAGIC_VESTMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_WEAPON") < 1 && d6() < 4) { UpdateVar("bSPELL_MAGIC_WEAPON"); ActionCastSpellAtObject(SPELL_MAGIC_WEAPON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_BLINDNESS_AND_DEAFNESS") < 1 && d6() < 4) { UpdateVar("bSPELL_MASS_BLINDNESS_AND_DEAFNESS"); ActionCastSpellAtObject(SPELL_MASS_BLINDNESS_AND_DEAFNESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_CAMOFLAGE") < 1 && d6() < 4) { UpdateVar("bSPELL_MASS_CAMOFLAGE"); ActionCastSpellAtObject(SPELL_MASS_CAMOFLAGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_CHARM") < 1 && d6() < 4) { UpdateVar("bSPELL_MASS_CHARM"); ActionCastSpellAtObject(SPELL_MASS_CHARM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_HASTE") < 1 && d6() < 4) { UpdateVar("bSPELL_MASS_HASTE"); ActionCastSpellAtObject(SPELL_MASS_HASTE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_HEAL") < 1 && d6() < 4) { UpdateVar("bSPELL_MASS_HEAL"); ActionCastSpellAtObject(SPELL_MASS_HEAL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MELFS_ACID_ARROW") < 1 && d6() < 4) { UpdateVar("bSPELL_MELFS_ACID_ARROW"); ActionCastSpellAtObject(SPELL_MELFS_ACID_ARROW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_BREATH") < 1 && d6() < 4) { UpdateVar("bSPELL_MESTILS_ACID_BREATH"); ActionCastSpellAtObject(SPELL_MESTILS_ACID_BREATH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_SHEATH") < 1 && d6() < 4) { UpdateVar("bSPELL_MESTILS_ACID_SHEATH"); ActionCastSpellAtObject(SPELL_MESTILS_ACID_SHEATH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_METEOR_SWARM") < 1 && d6() < 4) { UpdateVar("bSPELL_METEOR_SWARM"); ActionCastSpellAtObject(SPELL_METEOR_SWARM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MIND_BLANK") < 1 && d6() < 4) { UpdateVar("bSPELL_MIND_BLANK"); ActionCastSpellAtObject(SPELL_MIND_BLANK,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MIND_FOG") < 1 && d6() < 4) { UpdateVar("bSPELL_MIND_FOG"); ActionCastSpellAtObject(SPELL_MIND_FOG,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MINOR_GLOBE_OF_INVULNERABILITY") < 1 && d6() < 4) { UpdateVar("bSPELL_MINOR_GLOBE_OF_INVULNERABILITY"); ActionCastSpellAtObject(SPELL_MINOR_GLOBE_OF_INVULNERABILITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MONSTROUS_REGENERATION") < 1 && d6() < 4) { UpdateVar("bSPELL_MONSTROUS_REGENERATION"); ActionCastSpellAtObject(SPELL_MONSTROUS_REGENERATION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_DISJUNCTION") < 1 && d6() < 4) { UpdateVar("bSPELL_MORDENKAINENS_DISJUNCTION"); ActionCastSpellAtObject(SPELL_MORDENKAINENS_DISJUNCTION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_SWORD") < 1 && d6() < 4) { UpdateVar("bSPELL_MORDENKAINENS_SWORD"); ActionCastSpellAtObject(SPELL_MORDENKAINENS_SWORD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_NATURES_BALANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_NATURES_BALANCE"); ActionCastSpellAtObject(SPELL_NATURES_BALANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_BURST") < 1 && d6() < 4) { UpdateVar("bSPELL_NEGATIVE_ENERGY_BURST"); ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_BURST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_PROTECTION") < 1 && d6() < 4) { UpdateVar("bSPELL_NEGATIVE_ENERGY_PROTECTION"); ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_PROTECTION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_RAY") < 1 && d6() < 4) { UpdateVar("bSPELL_NEGATIVE_ENERGY_RAY"); ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_RAY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_NEUTRALIZE_POISON") < 1 && d6() < 4) { UpdateVar("bSPELL_NEUTRALIZE_POISON"); ActionCastSpellAtObject(SPELL_NEUTRALIZE_POISON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ONE_WITH_THE_LAND") < 1 && d6() < 4) { UpdateVar("bSPELL_ONE_WITH_THE_LAND"); ActionCastSpellAtObject(SPELL_ONE_WITH_THE_LAND,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_OWLS_INSIGHT") < 1 && d6() < 4) { UpdateVar("bSPELL_OWLS_INSIGHT"); ActionCastSpellAtObject(SPELL_OWLS_INSIGHT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_OWLS_WISDOM") < 1 && d6() < 4) { UpdateVar("bSPELL_OWLS_WISDOM"); ActionCastSpellAtObject(SPELL_OWLS_WISDOM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PALADIN_SUMMON_MOUNT") < 1 && d6() < 4) { UpdateVar("bSPELL_PALADIN_SUMMON_MOUNT"); ActionCastSpellAtObject(SPELL_PALADIN_SUMMON_MOUNT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PHANTASMAL_KILLER") < 1 && d6() < 4) { UpdateVar("bSPELL_PHANTASMAL_KILLER"); ActionCastSpellAtObject(SPELL_PHANTASMAL_KILLER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_ALLY") < 1 && d6() < 4) { UpdateVar("bSPELL_PLANAR_ALLY"); ActionCastSpellAtObject(SPELL_PLANAR_ALLY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_BINDING") < 1 && d6() < 4) { UpdateVar("bSPELL_PLANAR_BINDING"); ActionCastSpellAtObject(SPELL_PLANAR_BINDING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_POISON") < 1 && d6() < 4) { UpdateVar("bSPELL_POISON"); ActionCastSpellAtObject(SPELL_POISON,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_POLYMORPH_SELF") < 1 && d6() < 4) { UpdateVar("bSPELL_POLYMORPH_SELF"); ActionCastSpellAtObject(SPELL_POLYMORPH_SELF,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_KILL") < 1 && d6() < 4) { UpdateVar("bSPELL_POWER_WORD_KILL"); ActionCastSpellAtObject(SPELL_POWER_WORD_KILL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_STUN") < 1 && d6() < 4) { UpdateVar("bSPELL_POWER_WORD_STUN"); ActionCastSpellAtObject(SPELL_POWER_WORD_STUN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_POWERSTONE") < 1 && d6() < 4) { UpdateVar("bSPELL_POWERSTONE"); ActionCastSpellAtObject(SPELL_POWERSTONE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PRAYER") < 1 && d6() < 4) { UpdateVar("bSPELL_PRAYER"); ActionCastSpellAtObject(SPELL_PRAYER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PREMONITION") < 1 && d6() < 4) { UpdateVar("bSPELL_PREMONITION"); ActionCastSpellAtObject(SPELL_PREMONITION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PRISMATIC_SPRAY") < 1 && d6() < 4) { UpdateVar("bSPELL_PRISMATIC_SPRAY"); ActionCastSpellAtObject(SPELL_PRISMATIC_SPRAY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION__FROM_CHAOS") < 1 && d6() < 4) { UpdateVar("bSPELL_PROTECTION__FROM_CHAOS"); ActionCastSpellAtObject(SPELL_PROTECTION__FROM_CHAOS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_ELEMENTS") < 1 && d6() < 4) { UpdateVar("bSPELL_PROTECTION_FROM_ELEMENTS"); ActionCastSpellAtObject(SPELL_PROTECTION_FROM_ELEMENTS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_EVIL") < 1 && d6() < 4) { UpdateVar("bSPELL_PROTECTION_FROM_EVIL"); ActionCastSpellAtObject(SPELL_PROTECTION_FROM_EVIL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_GOOD") < 1 && d6() < 4) { UpdateVar("bSPELL_PROTECTION_FROM_GOOD"); ActionCastSpellAtObject(SPELL_PROTECTION_FROM_GOOD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_LAW") < 1 && d6() < 4) { UpdateVar("bSPELL_PROTECTION_FROM_LAW"); ActionCastSpellAtObject(SPELL_PROTECTION_FROM_LAW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_SPELLS") < 1 && d6() < 4) { UpdateVar("bSPELL_PROTECTION_FROM_SPELLS"); ActionCastSpellAtObject(SPELL_PROTECTION_FROM_SPELLS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_QUILLFIRE") < 1 && d6() < 4) { UpdateVar("bSPELL_QUILLFIRE"); ActionCastSpellAtObject(SPELL_QUILLFIRE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RAISE_DEAD") < 1 && d6() < 4) { UpdateVar("bSPELL_RAISE_DEAD"); ActionCastSpellAtObject(SPELL_RAISE_DEAD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_ENFEEBLEMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_RAY_OF_ENFEEBLEMENT"); ActionCastSpellAtObject(SPELL_RAY_OF_ENFEEBLEMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_FROST") < 1 && d6() < 4) { UpdateVar("bSPELL_RAY_OF_FROST"); ActionCastSpellAtObject(SPELL_RAY_OF_FROST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_REGENERATE") < 1 && d6() < 4) { UpdateVar("bSPELL_REGENERATE"); ActionCastSpellAtObject(SPELL_REGENERATE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_BLINDNESS_AND_DEAFNESS") < 1 && d6() < 4) { UpdateVar("bSPELL_REMOVE_BLINDNESS_AND_DEAFNESS"); ActionCastSpellAtObject(SPELL_REMOVE_BLINDNESS_AND_DEAFNESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_CURSE") < 1 && d6() < 4) { UpdateVar("bSPELL_REMOVE_CURSE"); ActionCastSpellAtObject(SPELL_REMOVE_CURSE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_DISEASE") < 1 && d6() < 4) { UpdateVar("bSPELL_REMOVE_DISEASE"); ActionCastSpellAtObject(SPELL_REMOVE_DISEASE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_FEAR") < 1 && d6() < 4) { UpdateVar("bSPELL_REMOVE_FEAR"); ActionCastSpellAtObject(SPELL_REMOVE_FEAR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_PARALYSIS") < 1 && d6() < 4) { UpdateVar("bSPELL_REMOVE_PARALYSIS"); ActionCastSpellAtObject(SPELL_REMOVE_PARALYSIS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RESIST_ELEMENTS") < 1 && d6() < 4) { UpdateVar("bSPELL_RESIST_ELEMENTS"); ActionCastSpellAtObject(SPELL_RESIST_ELEMENTS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RESISTANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_RESISTANCE"); ActionCastSpellAtObject(SPELL_RESISTANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RESTORATION") < 1 && d6() < 4) { UpdateVar("bSPELL_RESTORATION"); ActionCastSpellAtObject(SPELL_RESTORATION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_RESURRECTION") < 1 && d6() < 4) { UpdateVar("bSPELL_RESURRECTION"); ActionCastSpellAtObject(SPELL_RESURRECTION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_ROD_OF_WONDER") < 1 && d6() < 4) { UpdateVar("bSPELL_ROD_OF_WONDER"); ActionCastSpellAtObject(SPELL_ROD_OF_WONDER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SANCTUARY") < 1 && d6() < 4) { UpdateVar("bSPELL_SANCTUARY"); ActionCastSpellAtObject(SPELL_SANCTUARY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SCARE") < 1 && d6() < 4) { UpdateVar("bSPELL_SCARE"); ActionCastSpellAtObject(SPELL_SCARE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SCINTILLATING_SPHERE") < 1 && d6() < 4) { UpdateVar("bSPELL_SCINTILLATING_SPHERE"); ActionCastSpellAtObject(SPELL_SCINTILLATING_SPHERE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SEARING_LIGHT") < 1 && d6() < 4) { UpdateVar("bSPELL_SEARING_LIGHT"); ActionCastSpellAtObject(SPELL_SEARING_LIGHT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SEE_INVISIBILITY") < 1 && d6() < 4) { UpdateVar("bSPELL_SEE_INVISIBILITY"); ActionCastSpellAtObject(SPELL_SEE_INVISIBILITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_CONE_OF_COLD") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADES_CONE_OF_COLD"); ActionCastSpellAtObject(SPELL_SHADES_CONE_OF_COLD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_FIREBALL") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADES_FIREBALL"); ActionCastSpellAtObject(SPELL_SHADES_FIREBALL,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_STONESKIN") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADES_STONESKIN"); ActionCastSpellAtObject(SPELL_SHADES_STONESKIN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_SUMMON_SHADOW") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADES_SUMMON_SHADOW"); ActionCastSpellAtObject(SPELL_SHADES_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_WALL_OF_FIRE") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADES_WALL_OF_FIRE"); ActionCastSpellAtObject(SPELL_SHADES_WALL_OF_FIRE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_DARKNESS") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_CONJURATION_DARKNESS"); ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_DARKNESS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_INIVSIBILITY") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_CONJURATION_INIVSIBILITY"); ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_INIVSIBILITY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGE_ARMOR") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_CONJURATION_MAGE_ARMOR"); ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_MAGE_ARMOR,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGIC_MISSILE") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_CONJURATION_MAGIC_MISSILE"); ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_MAGIC_MISSILE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_SUMMON_SHADOW") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_CONJURATION_SUMMON_SHADOW"); ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_DAZE") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_DAZE"); ActionCastSpellAtObject(SPELL_SHADOW_DAZE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_EVADE") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_EVADE"); ActionCastSpellAtObject(SPELL_SHADOW_EVADE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_SHIELD") < 1 && d6() < 4) { UpdateVar("bSPELL_SHADOW_SHIELD"); ActionCastSpellAtObject(SPELL_SHADOW_SHIELD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHAPECHANGE") < 1 && d6() < 4) { UpdateVar("bSPELL_SHAPECHANGE"); ActionCastSpellAtObject(SPELL_SHAPECHANGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHELGARNS_PERSISTENT_BLADE") < 1 && d6() < 4) { UpdateVar("bSPELL_SHELGARNS_PERSISTENT_BLADE"); ActionCastSpellAtObject(SPELL_SHELGARNS_PERSISTENT_BLADE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD") < 1 && d6() < 4) { UpdateVar("bSPELL_SHIELD"); ActionCastSpellAtObject(SPELL_SHIELD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_FAITH") < 1 && d6() < 4) { UpdateVar("bSPELL_SHIELD_OF_FAITH"); ActionCastSpellAtObject(SPELL_SHIELD_OF_FAITH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_LAW") < 1 && d6() < 4) { UpdateVar("bSPELL_SHIELD_OF_LAW"); ActionCastSpellAtObject(SPELL_SHIELD_OF_LAW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SILENCE") < 1 && d6() < 4) { UpdateVar("bSPELL_SILENCE"); ActionCastSpellAtObject(SPELL_SILENCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SLAY_LIVING") < 1 && d6() < 4) { UpdateVar("bSPELL_SLAY_LIVING"); ActionCastSpellAtObject(SPELL_SLAY_LIVING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SLEEP") < 1 && d6() < 4) { UpdateVar("bSPELL_SLEEP"); ActionCastSpellAtObject(SPELL_SLEEP,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SLOW") < 1 && d6() < 4) { UpdateVar("bSPELL_SLOW"); ActionCastSpellAtObject(SPELL_SLOW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SOUND_BURST") < 1 && d6() < 4) { UpdateVar("bSPELL_SOUND_BURST"); ActionCastSpellAtObject(SPELL_SOUND_BURST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SPELL_MANTLE") < 1 && d6() < 4) { UpdateVar("bSPELL_SPELL_MANTLE"); ActionCastSpellAtObject(SPELL_SPELL_MANTLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SPELL_RESISTANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_SPELL_RESISTANCE"); ActionCastSpellAtObject(SPELL_SPELL_RESISTANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SPELLSTAFF") < 1 && d6() < 4) { UpdateVar("bSPELL_SPELLSTAFF"); ActionCastSpellAtObject(SPELL_SPELLSTAFF,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SPHERE_OF_CHAOS") < 1 && d6() < 4) { UpdateVar("bSPELL_SPHERE_OF_CHAOS"); ActionCastSpellAtObject(SPELL_SPHERE_OF_CHAOS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SPIKE_GROWTH") < 1 && d6() < 4) { UpdateVar("bSPELL_SPIKE_GROWTH"); ActionCastSpellAtObject(SPELL_SPIKE_GROWTH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_STINKING_CLOUD") < 1 && d6() < 4) { UpdateVar("bSPELL_STINKING_CLOUD"); ActionCastSpellAtObject(SPELL_STINKING_CLOUD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_STONE_BONES") < 1 && d6() < 4) { UpdateVar("bSPELL_STONE_BONES"); ActionCastSpellAtObject(SPELL_STONE_BONES,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_STONE_TO_FLESH") < 1 && d6() < 4) { UpdateVar("bSPELL_STONE_TO_FLESH"); ActionCastSpellAtObject(SPELL_STONE_TO_FLESH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_STONEHOLD") < 1 && d6() < 4) { UpdateVar("bSPELL_STONEHOLD"); ActionCastSpellAtObject(SPELL_STONEHOLD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_STONESKIN") < 1 && d6() < 4) { UpdateVar("bSPELL_STONESKIN"); ActionCastSpellAtObject(SPELL_STONESKIN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_STORM_OF_VENGEANCE") < 1 && d6() < 4) { UpdateVar("bSPELL_STORM_OF_VENGEANCE"); ActionCastSpellAtObject(SPELL_STORM_OF_VENGEANCE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_I") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_I"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_I,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_II") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_II"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_II,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_III") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_III"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_III,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IV") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_IV"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_IV,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_V") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_V"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_V,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VI") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_VI"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VI,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VII") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_VII"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VII,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VIII") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_VIII"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VIII,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IX") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_CREATURE_IX"); ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_IX,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_SHADOW") < 1 && d6() < 4) { UpdateVar("bSPELL_SUMMON_SHADOW"); ActionCastSpellAtObject(SPELL_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUNBEAM") < 1 && d6() < 4) { UpdateVar("bSPELL_SUNBEAM"); ActionCastSpellAtObject(SPELL_SUNBEAM,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_SUNBURST") < 1 && d6() < 4) { UpdateVar("bSPELL_SUNBURST"); ActionCastSpellAtObject(SPELL_SUNBURST,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TASHAS_HIDEOUS_LAUGHTER") < 1 && d6() < 4) { UpdateVar("bSPELL_TASHAS_HIDEOUS_LAUGHTER"); ActionCastSpellAtObject(SPELL_TASHAS_HIDEOUS_LAUGHTER,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TENSERS_TRANSFORMATION") < 1 && d6() < 4) { UpdateVar("bSPELL_TENSERS_TRANSFORMATION"); ActionCastSpellAtObject(SPELL_TENSERS_TRANSFORMATION,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TIME_STOP") < 1 && d6() < 4) { UpdateVar("bSPELL_TIME_STOP"); ActionCastSpellAtObject(SPELL_TIME_STOP,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_ARROW") < 1 && d6() < 4) { UpdateVar("bSPELL_TRAP_ARROW"); ActionCastSpellAtObject(SPELL_TRAP_ARROW,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_BOLT") < 1 && d6() < 4) { UpdateVar("bSPELL_TRAP_BOLT"); ActionCastSpellAtObject(SPELL_TRAP_BOLT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_DART") < 1 && d6() < 4) { UpdateVar("bSPELL_TRAP_DART"); ActionCastSpellAtObject(SPELL_TRAP_DART,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_SHURIKEN") < 1 && d6() < 4) { UpdateVar("bSPELL_TRAP_SHURIKEN"); ActionCastSpellAtObject(SPELL_TRAP_SHURIKEN,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TRUE_SEEING") < 1 && d6() < 4) { UpdateVar("bSPELL_TRUE_SEEING"); ActionCastSpellAtObject(SPELL_TRUE_SEEING,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TRUE_STRIKE") < 1 && d6() < 4) { UpdateVar("bSPELL_TRUE_STRIKE"); ActionCastSpellAtObject(SPELL_TRUE_STRIKE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_TYMORAS_SMILE") < 1 && d6() < 4) { UpdateVar("bSPELL_TYMORAS_SMILE"); ActionCastSpellAtObject(SPELL_TYMORAS_SMILE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_UNDEATH_TO_DEATH") < 1 && d6() < 4) { UpdateVar("bSPELL_UNDEATH_TO_DEATH"); ActionCastSpellAtObject(SPELL_UNDEATH_TO_DEATH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_UNDEATHS_ETERNAL_FOE") < 1 && d6() < 4) { UpdateVar("bSPELL_UNDEATHS_ETERNAL_FOE"); ActionCastSpellAtObject(SPELL_UNDEATHS_ETERNAL_FOE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_UNHOLY_AURA") < 1 && d6() < 4) { UpdateVar("bSPELL_UNHOLY_AURA"); ActionCastSpellAtObject(SPELL_UNHOLY_AURA,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_VAMPIRIC_TOUCH") < 1 && d6() < 4) { UpdateVar("bSPELL_VAMPIRIC_TOUCH"); ActionCastSpellAtObject(SPELL_VAMPIRIC_TOUCH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE") < 1 && d6() < 4) { UpdateVar("bSPELL_VINE_MINE"); ActionCastSpellAtObject(SPELL_VINE_MINE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_CAMOUFLAGE") < 1 && d6() < 4) { UpdateVar("bSPELL_VINE_MINE_CAMOUFLAGE"); ActionCastSpellAtObject(SPELL_VINE_MINE_CAMOUFLAGE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_ENTANGLE") < 1 && d6() < 4) { UpdateVar("bSPELL_VINE_MINE_ENTANGLE"); ActionCastSpellAtObject(SPELL_VINE_MINE_ENTANGLE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_HAMPER_MOVEMENT") < 1 && d6() < 4) { UpdateVar("bSPELL_VINE_MINE_HAMPER_MOVEMENT"); ActionCastSpellAtObject(SPELL_VINE_MINE_HAMPER_MOVEMENT,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_VIRTUE") < 1 && d6() < 4) { UpdateVar("bSPELL_VIRTUE"); ActionCastSpellAtObject(SPELL_VIRTUE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WAIL_OF_THE_BANSHEE") < 1 && d6() < 4) { UpdateVar("bSPELL_WAIL_OF_THE_BANSHEE"); ActionCastSpellAtObject(SPELL_WAIL_OF_THE_BANSHEE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WALL_OF_FIRE") < 1 && d6() < 4) { UpdateVar("bSPELL_WALL_OF_FIRE"); ActionCastSpellAtObject(SPELL_WALL_OF_FIRE,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WAR_CRY") < 1 && d6() < 4) { UpdateVar("bSPELL_WAR_CRY"); ActionCastSpellAtObject(SPELL_WAR_CRY,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WEB") < 1 && d6() < 4) { UpdateVar("bSPELL_WEB"); ActionCastSpellAtObject(SPELL_WEB,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WEIRD") < 1 && d6() < 4) { UpdateVar("bSPELL_WEIRD"); ActionCastSpellAtObject(SPELL_WEIRD,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WORD_OF_FAITH") < 1 && d6() < 4) { UpdateVar("bSPELL_WORD_OF_FAITH"); ActionCastSpellAtObject(SPELL_WORD_OF_FAITH,oTarget,METAMAGIC_NONE,TRUE); return 1; }
if( GetLocalInt(OBJECT_SELF,"bSPELL_WOUNDING_WHISPERS") < 1 && d6() < 4) { UpdateVar("bSPELL_WOUNDING_WHISPERS"); ActionCastSpellAtObject(SPELL_WOUNDING_WHISPERS,oTarget,METAMAGIC_NONE,TRUE); return 1; }
return 0;
}

void main()
{
    object oEnemy = bkAcquireTarget();
    int nPoints = GetLocalInt(OBJECT_SELF,"nPoints");
    __TurnCombatRoundOn(TRUE);
    TemplateAbility(oEnemy);
    __TurnCombatRoundOn(FALSE);
}
