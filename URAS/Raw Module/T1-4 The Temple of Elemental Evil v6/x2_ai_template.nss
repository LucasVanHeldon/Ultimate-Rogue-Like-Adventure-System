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


void main()
{
    object oEnemy = bkAcquireTarget();
    int nPoints = GetLocalInt(OBJECT_SELF,"nPoints");
    __TurnCombatRoundOn(TRUE);
    TemplateAbility(oEnemy);
    __TurnCombatRoundOn(FALSE);
}
