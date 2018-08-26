// this isn't meant to replace the game talent engine

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


int Template_SelfAbility(object oTarget)
{
if(GetLocalInt(OBJECT_SELF,"bAS_GHOSTLY_VISAGE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAS_GHOSTLY_VISAGE");
        MMPCAST_AS_GHOSTLY_VISAGE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAS_IMPROVED_INVISIBLITY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAS_IMPROVED_INVISIBLITY");
        MMPCAST_AS_IMPROVED_INVISIBLITY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAS_INVISIBILITY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAS_INVISIBILITY");
        MMPCAST_AS_INVISIBILITY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_BLINDING") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_BLINDING");
        MMPCAST_AURA_BLINDING(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_COLD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_COLD");
        MMPCAST_AURA_COLD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_ELECTRICITY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_ELECTRICITY");
        MMPCAST_AURA_ELECTRICITY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_FEAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_FEAR");
        MMPCAST_AURA_FEAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_FIRE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_FIRE");
        MMPCAST_AURA_FIRE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_HORRIFICAPPEARANCE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_HORRIFICAPPEARANCE");
        MMPCAST_AURA_HORRIFICAPPEARANCE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_MENACE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_MENACE");
        MMPCAST_AURA_MENACE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_OF_COURAGE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_OF_COURAGE");
        MMPCAST_AURA_OF_COURAGE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_PROTECTION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_PROTECTION");
        MMPCAST_AURA_PROTECTION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_STUN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_STUN");
        MMPCAST_AURA_STUN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_UNEARTHLY_VISAGE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_UNEARTHLY_VISAGE");
        MMPCAST_AURA_UNEARTHLY_VISAGE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAURA_UNNATURAL") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAURA_UNNATURAL");
        MMPCAST_AURA_UNNATURAL(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBARBARIAN_RAGE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBARBARIAN_RAGE");
        MMPCAST_BARBARIAN_RAGE(oTarget);
        return 1;
    }


if(GetLocalInt(OBJECT_SELF,"bDIVINE_PROTECTION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDIVINE_PROTECTION");
        MMPCAST_DIVINE_PROTECTION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDIVINE_STRENGTH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDIVINE_STRENGTH");
        MMPCAST_DIVINE_STRENGTH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDIVINE_TRICKERY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDIVINE_TRICKERY");
        MMPCAST_DIVINE_TRICKERY(oTarget);
        return 1;
    }

return 0;
}


int Template_AbilitySummon()
{
object oTarget = OBJECT_SELF;
if(GetLocalInt(OBJECT_SELF,"bSUMMON_ANIMAL_COMPANION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSUMMON_ANIMAL_COMPANION");
        MMPCAST_SUMMON_ANIMAL_COMPANION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bSUMMON_CELESTIAL") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSUMMON_CELESTIAL");
        MMPCAST_SUMMON_CELESTIAL(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bSUMMON_FAMILIAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSUMMON_FAMILIAR");
        MMPCAST_SUMMON_FAMILIAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bSUMMON_MEPHIT") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSUMMON_MEPHIT");
        MMPCAST_SUMMON_MEPHIT(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bSUMMON_SLAAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSUMMON_SLAAD");
        MMPCAST_SUMMON_SLAAD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bSUMMON_TANARRI") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSUMMON_TANARRI");
        MMPCAST_SUMMON_TANARRI(oTarget);
        return 1;
    }
    return 0;
}

int Template_UseAbility(object oTarget)
{

/*
if(GetLocalInt(OBJECT_SELF,"bAA_ARROW_OF_DEATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAA_ARROW_OF_DEATH");
        MMPCAST_AA_ARROW_OF_DEATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAA_HAIL_OF_ARROWS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAA_HAIL_OF_ARROWS");
        MMPCAST_AA_HAIL_OF_ARROWS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAA_IMBUE_ARROW") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAA_IMBUE_ARROW");
        MMPCAST_AA_IMBUE_ARROW(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAA_SEEKER_ARROW_1") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAA_SEEKER_ARROW_1");
        MMPCAST_AA_SEEKER_ARROW_1(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bAA_SEEKER_ARROW_2") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAA_SEEKER_ARROW_2");
        MMPCAST_AA_SEEKER_ARROW_2(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bAS_DARKNESS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bAS_DARKNESS");
        MMPCAST_AS_DARKNESS(oTarget);
        return 1;
    }
*/


/*
if(GetLocalInt(OBJECT_SELF,"bBATTLE_MASTERY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBATTLE_MASTERY");
        MMPCAST_BATTLE_MASTERY(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bCOMMAND_THE_HORDE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCOMMAND_THE_HORDE");
        MMPCAST_COMMAND_THE_HORDE(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bELEMENTAL_SHAPE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bELEMENTAL_SHAPE");
        MMPCAST_ELEMENTAL_SHAPE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bEMPTY_BODY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bEMPTY_BODY");
        MMPCAST_EMPTY_BODY(oTarget);
        return 1;
    }

*/

/*
if(GetLocalInt(OBJECT_SELF,"bBG_CONTAGION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBG_CONTAGION");
        MMPCAST_BG_CONTAGION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBG_CREATEDEAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBG_CREATEDEAD");
        MMPCAST_BG_CREATEDEAD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBG_FIENDISH_SERVANT") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBG_FIENDISH_SERVANT");
        MMPCAST_BG_FIENDISH_SERVANT(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBG_INFLICT_CRITICAL_WOUNDS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBG_INFLICT_CRITICAL_WOUNDS");
        MMPCAST_BG_INFLICT_CRITICAL_WOUNDS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBG_INFLICT_SERIOUS_WOUNDS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBG_INFLICT_SERIOUS_WOUNDS");
        MMPCAST_BG_INFLICT_SERIOUS_WOUNDS(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bBG_BULLS_STRENGTH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBG_BULLS_STRENGTH");
        MMPCAST_BG_BULLS_STRENGTH(oTarget);
        return 1;
    }
}
if(GetLocalInt(OBJECT_SELF,"bDC_DIVINE_WRATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDC_DIVINE_WRATH");
        MMPCAST_DC_DIVINE_WRATH(oTarget);
        return 1;
    }
*/

if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CHARISMA") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ABILITY_DRAIN_CHARISMA");
        MMPCAST_BOLT_ABILITY_DRAIN_CHARISMA(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CONSTITUTION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ABILITY_DRAIN_CONSTITUTION");
        MMPCAST_BOLT_ABILITY_DRAIN_CONSTITUTION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_DEXTERITY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ABILITY_DRAIN_DEXTERITY");
        MMPCAST_BOLT_ABILITY_DRAIN_DEXTERITY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_INTELLIGENCE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ABILITY_DRAIN_INTELLIGENCE");
        MMPCAST_BOLT_ABILITY_DRAIN_INTELLIGENCE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_STRENGTH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ABILITY_DRAIN_STRENGTH");
        MMPCAST_BOLT_ABILITY_DRAIN_STRENGTH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_WISDOM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ABILITY_DRAIN_WISDOM");
        MMPCAST_BOLT_ABILITY_DRAIN_WISDOM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_ACID") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_ACID");
        MMPCAST_BOLT_ACID(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_CHARM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_CHARM");
        MMPCAST_BOLT_CHARM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_COLD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_COLD");
        MMPCAST_BOLT_COLD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_CONFUSE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_CONFUSE");
        MMPCAST_BOLT_CONFUSE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_DAZE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_DAZE");
        MMPCAST_BOLT_DAZE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_DEATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_DEATH");
        MMPCAST_BOLT_DEATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_DISEASE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_DISEASE");
        MMPCAST_BOLT_DISEASE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_DOMINATE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_DOMINATE");
        MMPCAST_BOLT_DOMINATE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_FIRE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_FIRE");
        MMPCAST_BOLT_FIRE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_KNOCKDOWN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_KNOCKDOWN");
        MMPCAST_BOLT_KNOCKDOWN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_LEVEL_DRAIN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_LEVEL_DRAIN");
        MMPCAST_BOLT_LEVEL_DRAIN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_LIGHTNING") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_LIGHTNING");
        MMPCAST_BOLT_LIGHTNING(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_PARALYZE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_PARALYZE");
        MMPCAST_BOLT_PARALYZE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_POISON") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_POISON");
        MMPCAST_BOLT_POISON(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_SHARDS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_SHARDS");
        MMPCAST_BOLT_SHARDS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_SLOW") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_SLOW");
        MMPCAST_BOLT_SLOW(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_STUN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_STUN");
        MMPCAST_BOLT_STUN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBOLT_WEB") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBOLT_WEB");
        MMPCAST_BOLT_WEB(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bBREATH_PETRIFY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bBREATH_PETRIFY");
        MMPCAST_BREATH_PETRIFY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCHARMMONSTER") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCHARMMONSTER");
        MMPCAST_CHARMMONSTER(oTarget);
        return 1;
    }


if(GetLocalInt(OBJECT_SELF,"bCONE_ACID") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_ACID");
        MMPCAST_CONE_ACID(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCONE_COLD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_COLD");
        MMPCAST_CONE_COLD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCONE_DISEASE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_DISEASE");
        MMPCAST_CONE_DISEASE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCONE_FIRE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_FIRE");
        MMPCAST_CONE_FIRE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCONE_LIGHTNING") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_LIGHTNING");
        MMPCAST_CONE_LIGHTNING(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCONE_POISON") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_POISON");
        MMPCAST_CONE_POISON(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bCONE_SONIC") > 0)
    if(d6() < 3)
    {
        UpdateVar("bCONE_SONIC");
        MMPCAST_CONE_SONIC(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bDETECT_EVIL") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDETECT_EVIL");
        MMPCAST_DETECT_EVIL(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_ACID") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_ACID");
        MMPCAST_DRAGON_BREATH_ACID(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_COLD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_COLD");
        MMPCAST_DRAGON_BREATH_COLD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_FEAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_FEAR");
        MMPCAST_DRAGON_BREATH_FEAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_FIRE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_FIRE");
        MMPCAST_DRAGON_BREATH_FIRE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_GAS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_GAS");
        MMPCAST_DRAGON_BREATH_GAS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_LIGHTNING") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_LIGHTNING");
        MMPCAST_DRAGON_BREATH_LIGHTNING(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_NEGATIVE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_NEGATIVE");
        MMPCAST_DRAGON_BREATH_NEGATIVE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_PARALYZE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_PARALYZE");
        MMPCAST_DRAGON_BREATH_PARALYZE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_SLEEP") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_SLEEP");
        MMPCAST_DRAGON_BREATH_SLEEP(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_SLOW") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_SLOW");
        MMPCAST_DRAGON_BREATH_SLOW(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_WEAKEN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_BREATH_WEAKEN");
        MMPCAST_DRAGON_BREATH_WEAKEN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_FEAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_FEAR");
        MMPCAST_DRAGON_FEAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bDRAGON_WING_BUFFET") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDRAGON_WING_BUFFET");
        MMPCAST_DRAGON_WING_BUFFET(oTarget);
        return 1;
    }

/*
if(GetLocalInt(OBJECT_SELF,"bDW_DEFENSIVE_STANCE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bDW_DEFENSIVE_STANCE");
        MMPCAST_DW_DEFENSIVE_STANCE(oTarget);
        return 1;
    }


if(GetLocalInt(OBJECT_SELF,"bEPIC_CURSE_SONG") > 0)
    if(d6() < 3)
    {
        UpdateVar("bEPIC_CURSE_SONG");
        MMPCAST_EPIC_CURSE_SONG(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bEPIC_IMPROVED_WHIRLWIND") > 0)
    if(d6() < 3)
    {
        UpdateVar("bEPIC_IMPROVED_WHIRLWIND");
        MMPCAST_EPIC_IMPROVED_WHIRLWIND(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bEPIC_MIGHTY_RAGE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bEPIC_MIGHTY_RAGE");
        MMPCAST_EPIC_MIGHTY_RAGE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bEPIC_SHAPE_DRAGON") > 0)
    if(d6() < 3)
    {
        UpdateVar("bEPIC_SHAPE_DRAGON");
        MMPCAST_EPIC_SHAPE_DRAGON(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bEPIC_SHAPE_DRAGONKIN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bEPIC_SHAPE_DRAGONKIN");
        MMPCAST_EPIC_SHAPE_DRAGONKIN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bFEROCITY_1") > 0)
    if(d6() < 3)
    {
        UpdateVar("bFEROCITY_1");
        MMPCAST_FEROCITY_1(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bFEROCITY_2") > 0)
    if(d6() < 3)
    {
        UpdateVar("bFEROCITY_2");
        MMPCAST_FEROCITY_2(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bFEROCITY_3") > 0)
    if(d6() < 3)
    {
        UpdateVar("bFEROCITY_3");
        MMPCAST_FEROCITY_3(oTarget);
        return 1;
    }
*/

if(GetLocalInt(OBJECT_SELF,"bGAZE_CHARM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_CHARM");
        MMPCAST_GAZE_CHARM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_CONFUSION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_CONFUSION");
        MMPCAST_GAZE_CONFUSION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DAZE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DAZE");
        MMPCAST_GAZE_DAZE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DEATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DEATH");
        MMPCAST_GAZE_DEATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_CHAOS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DESTROY_CHAOS");
        MMPCAST_GAZE_DESTROY_CHAOS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_EVIL") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DESTROY_EVIL");
        MMPCAST_GAZE_DESTROY_EVIL(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_GOOD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DESTROY_GOOD");
        MMPCAST_GAZE_DESTROY_GOOD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_LAW") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DESTROY_LAW");
        MMPCAST_GAZE_DESTROY_LAW(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DOMINATE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DOMINATE");
        MMPCAST_GAZE_DOMINATE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_DOOM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_DOOM");
        MMPCAST_GAZE_DOOM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_FEAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_FEAR");
        MMPCAST_GAZE_FEAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_PARALYSIS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_PARALYSIS");
        MMPCAST_GAZE_PARALYSIS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_PETRIFY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_PETRIFY");
        MMPCAST_GAZE_PETRIFY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGAZE_STUNNED") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGAZE_STUNNED");
        MMPCAST_GAZE_STUNNED(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bGOLEM_BREATH_GAS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bGOLEM_BREATH_GAS");
        MMPCAST_GOLEM_BREATH_GAS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHELL_HOUND_FIREBREATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHELL_HOUND_FIREBREATH");
        MMPCAST_HELL_HOUND_FIREBREATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_CONFUSE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_CONFUSE");
        MMPCAST_HOWL_CONFUSE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_DAZE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_DAZE");
        MMPCAST_HOWL_DAZE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_DEATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_DEATH");
        MMPCAST_HOWL_DEATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_DOOM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_DOOM");
        MMPCAST_HOWL_DOOM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_FEAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_FEAR");
        MMPCAST_HOWL_FEAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_PARALYSIS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_PARALYSIS");
        MMPCAST_HOWL_PARALYSIS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_SONIC") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_SONIC");
        MMPCAST_HOWL_SONIC(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bHOWL_STUN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bHOWL_STUN");
        MMPCAST_HOWL_STUN(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bKRENSHAR_SCARE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bKRENSHAR_SCARE");
        MMPCAST_KRENSHAR_SCARE(oTarget);
        return 1;
    }



if(GetLocalInt(OBJECT_SELF,"bMANTICORE_SPIKES") > 0)
    if(d6() < 3)
    {
        UpdateVar("bMANTICORE_SPIKES");
        MMPCAST_MANTICORE_SPIKES(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bMEPHIT_SALT_BREATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bMEPHIT_SALT_BREATH");
        MMPCAST_MEPHIT_SALT_BREATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bMEPHIT_STEAM_BREATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bMEPHIT_STEAM_BREATH");
        MMPCAST_MEPHIT_STEAM_BREATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bMINDBLAST") > 0)
    if(d6() < 3)
    {
        UpdateVar("bMINDBLAST");
        MMPCAST_MINDBLAST(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bMUMMY_BOLSTER_UNDEAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bMUMMY_BOLSTER_UNDEAD");
        MMPCAST_MUMMY_BOLSTER_UNDEAD(oTarget);
        return 1;
    }

/*
if(GetLocalInt(OBJECT_SELF,"bINTENSITY_1") > 0)
    if(d6() < 3)
    {
        UpdateVar("bINTENSITY_1");
        MMPCAST_INTENSITY_1(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bINTENSITY_2") > 0)
    if(d6() < 3)
    {
        UpdateVar("bINTENSITY_2");
        MMPCAST_INTENSITY_2(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bINTENSITY_3") > 0)
    if(d6() < 3)
    {
        UpdateVar("bINTENSITY_3");
        MMPCAST_INTENSITY_3(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bLAY_ON_HANDS") > 0)
    if(d6() < 3)
    {
        UpdateVar("bLAY_ON_HANDS");
        MMPCAST_LAY_ON_HANDS(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bLESSER_BODY_ADJUSTMENT") > 0)
    if(d6() < 3)
    {
        UpdateVar("bLESSER_BODY_ADJUSTMENT");
        MMPCAST_LESSER_BODY_ADJUSTMENT(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bNEGATIVE_PLANE_AVATAR") > 0)
    if(d6() < 3)
    {
        UpdateVar("bNEGATIVE_PLANE_AVATAR");
        MMPCAST_NEGATIVE_PLANE_AVATAR(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPM_DEATHLESS_MASTER_TOUCH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPM_DEATHLESS_MASTER_TOUCH");
        MMPCAST_PM_DEATHLESS_MASTER_TOUCH(oTarget);
        return 1;
    }


if(GetLocalInt(OBJECT_SELF,"bPM_ANIMATE_DEAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPM_ANIMATE_DEAD");
        MMPCAST_PM_ANIMATE_DEAD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPM_SUMMON_GREATER_UNDEAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPM_SUMMON_GREATER_UNDEAD");
        MMPCAST_PM_SUMMON_GREATER_UNDEAD(oTarget);
        return 1;
    }


if(GetLocalInt(OBJECT_SELF,"bPM_SUMMON_UNDEAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPM_SUMMON_UNDEAD");
        MMPCAST_PM_SUMMON_UNDEAD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPM_UNDEAD_GRAFT_1") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPM_UNDEAD_GRAFT_1");
        MMPCAST_PM_UNDEAD_GRAFT_1(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPM_UNDEAD_GRAFT_2") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPM_UNDEAD_GRAFT_2");
        MMPCAST_PM_UNDEAD_GRAFT_2(oTarget);
        return 1;
    }
*/



if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CHARISMA") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_ABILITY_DRAIN_CHARISMA");
        MMPCAST_PULSE_ABILITY_DRAIN_CHARISMA(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CONSTITUTION") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_ABILITY_DRAIN_CONSTITUTION");
        MMPCAST_PULSE_ABILITY_DRAIN_CONSTITUTION(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_DEXTERITY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_ABILITY_DRAIN_DEXTERITY");
        MMPCAST_PULSE_ABILITY_DRAIN_DEXTERITY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_INTELLIGENCE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_ABILITY_DRAIN_INTELLIGENCE");
        MMPCAST_PULSE_ABILITY_DRAIN_INTELLIGENCE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_STRENGTH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_ABILITY_DRAIN_STRENGTH");
        MMPCAST_PULSE_ABILITY_DRAIN_STRENGTH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_WISDOM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_ABILITY_DRAIN_WISDOM");
        MMPCAST_PULSE_ABILITY_DRAIN_WISDOM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_COLD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_COLD");
        MMPCAST_PULSE_COLD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_DEATH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_DEATH");
        MMPCAST_PULSE_DEATH(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_DISEASE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_DISEASE");
        MMPCAST_PULSE_DISEASE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_DROWN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_DROWN");
        MMPCAST_PULSE_DROWN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_FIRE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_FIRE");
        MMPCAST_PULSE_FIRE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_HOLY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_HOLY");
        MMPCAST_PULSE_HOLY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_LEVEL_DRAIN") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_LEVEL_DRAIN");
        MMPCAST_PULSE_LEVEL_DRAIN(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_LIGHTNING") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_LIGHTNING");
        MMPCAST_PULSE_LIGHTNING(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_NEGATIVE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_NEGATIVE");
        MMPCAST_PULSE_NEGATIVE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_POISON") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_POISON");
        MMPCAST_PULSE_POISON(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bPULSE_SPORES") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_SPORES");
        MMPCAST_PULSE_SPORES(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bPULSE_WHIRLWIND") > 0)
    if(d6() < 3)
    {
        UpdateVar("bPULSE_WHIRLWIND");
        MMPCAST_PULSE_WHIRLWIND(oTarget);
        return 1;
    }


/*
if(GetLocalInt(OBJECT_SELF,"bQUIVERING_PALM") > 0)
    if(d6() < 3)
    {
        UpdateVar("bQUIVERING_PALM");
        MMPCAST_QUIVERING_PALM(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bRAGE_3") > 0)
    if(d6() < 3)
    {
        UpdateVar("bRAGE_3");
        MMPCAST_RAGE_3(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bRAGE_4") > 0)
    if(d6() < 3)
    {
        UpdateVar("bRAGE_4");
        MMPCAST_RAGE_4(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bRAGE_5") > 0)
    if(d6() < 3)
    {
        UpdateVar("bRAGE_5");
        MMPCAST_RAGE_5(oTarget);
        return 1;
    }
*/



/*
if(GetLocalInt(OBJECT_SELF,"bREMOVE_DISEASE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bREMOVE_DISEASE");
        MMPCAST_REMOVE_DISEASE(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bROGUES_CUNNING") > 0)
    if(d6() < 3)
    {
        UpdateVar("bROGUES_CUNNING");
        MMPCAST_ROGUES_CUNNING(oTarget);
        return 1;
    }
*/

if(GetLocalInt(OBJECT_SELF,"bSEAHAG_EVILEYE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSEAHAG_EVILEYE");
        MMPCAST_SEAHAG_EVILEYE(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bSMITE_EVIL") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSMITE_EVIL");
        MMPCAST_SMITE_EVIL(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bSMOKE_CLAW") > 0)
    if(d6() < 3)
    {
        UpdateVar("bSMOKE_CLAW");
        MMPCAST_SMOKE_CLAW(oTarget);
        return 1;
    }




if(GetLocalInt(OBJECT_SELF,"bTOUCH_PETRIFY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bTOUCH_PETRIFY");
        MMPCAST_TOUCH_PETRIFY(oTarget);
        return 1;
    }

if(GetLocalInt(OBJECT_SELF,"bTROGLODYTE_STENCH") > 0)
    if(d6() < 3)
    {
        UpdateVar("bTROGLODYTE_STENCH");
        MMPCAST_TROGLODYTE_STENCH(oTarget);
        return 1;
    }
/*
if(GetLocalInt(OBJECT_SELF,"bTRUMPET_BLAST") > 0)
    if(d6() < 3)
    {
        UpdateVar("bTRUMPET_BLAST");
        MMPCAST_TRUMPET_BLAST(oTarget);
        return 1;
    }
*/

if(GetLocalInt(OBJECT_SELF,"bTURN_UNDEAD") > 0)
    if(d6() < 3)
    {
        UpdateVar("bTURN_UNDEAD");
        MMPCAST_TURN_UNDEAD(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bTYRANT_FOG_MIST") > 0)
    if(d6() < 3)
    {
        UpdateVar("bTYRANT_FOG_MIST");
        MMPCAST_TYRANT_FOG_MIST(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bWHIRLWIND") > 0)
    if(d6() < 3)
    {
        UpdateVar("bWHIRLWIND");
        MMPCAST_WHIRLWIND(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bWHOLENESS_OF_BODY") > 0)
    if(d6() < 3)
    {
        UpdateVar("bWHOLENESS_OF_BODY");
        MMPCAST_WHOLENESS_OF_BODY(oTarget);
        return 1;
    }
if(GetLocalInt(OBJECT_SELF,"bWILD_SHAPE") > 0)
    if(d6() < 3)
    {
        UpdateVar("bWILD_SHAPE");
        MMPCAST_WILD_SHAPE(oTarget);
       return 1;
    }

return 0;
}

int Template_CastSpell(object oTarget)
{
if( GetLocalInt(OBJECT_SELF,"bSPELL_ACID_FOG") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ACID_FOG") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ACID_FOG,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ACID_FOG");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ACID_SPLASH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ACID_SPLASH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ACID_SPLASH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ACID_SPLASH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_PORTAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_PORTAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ACTIVATE_ITEM_PORTAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ACTIVATE_ITEM_PORTAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_SELF2") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_SELF2") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ACTIVATE_ITEM_SELF2,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ACTIVATE_ITEM_SELF2");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_AID") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_AID") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_AID,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_AID");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ALL_SPELLS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ALL_SPELLS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ALL_SPELLS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ALL_SPELLS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_AMPLIFY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_AMPLIFY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_AMPLIFY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_AMPLIFY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ANIMATE_DEAD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ANIMATE_DEAD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ANIMATE_DEAD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ANIMATE_DEAD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_AURA_OF_VITALITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_AURA_OF_VITALITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_AURA_OF_VITALITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_AURA_OF_VITALITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_AURAOFGLORY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_AURAOFGLORY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_AURAOFGLORY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_AURAOFGLORY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_AWAKEN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_AWAKEN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_AWAKEN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_AWAKEN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BALAGARNSIRONHORN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BALAGARNSIRONHORN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BALAGARNSIRONHORN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BALAGARNSIRONHORN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BALL_LIGHTNING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BALL_LIGHTNING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BALL_LIGHTNING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BALL_LIGHTNING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BANE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BANE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BANE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BANE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BANISHMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BANISHMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BANISHMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BANISHMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BARKSKIN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BARKSKIN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BARKSKIN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BARKSKIN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BATTLETIDE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BATTLETIDE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BATTLETIDE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BATTLETIDE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BESTOW_CURSE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BESTOW_CURSE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BESTOW_CURSE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BESTOW_CURSE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CLENCHED_FIST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CLENCHED_FIST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BIGBYS_CLENCHED_FIST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BIGBYS_CLENCHED_FIST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CRUSHING_HAND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CRUSHING_HAND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BIGBYS_CRUSHING_HAND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BIGBYS_CRUSHING_HAND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_FORCEFUL_HAND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_FORCEFUL_HAND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BIGBYS_FORCEFUL_HAND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BIGBYS_FORCEFUL_HAND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_GRASPING_HAND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_GRASPING_HAND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BIGBYS_GRASPING_HAND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BIGBYS_GRASPING_HAND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_INTERPOSING_HAND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_INTERPOSING_HAND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BIGBYS_INTERPOSING_HAND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BIGBYS_INTERPOSING_HAND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLACK_BLADE_OF_DISASTER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLACK_BLADE_OF_DISASTER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLACK_BLADE_OF_DISASTER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLACK_BLADE_OF_DISASTER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLACKSTAFF") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLACKSTAFF") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLACKSTAFF,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLACKSTAFF");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLADE_BARRIER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLADE_BARRIER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLADE_BARRIER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLADE_BARRIER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLADE_THIRST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLADE_THIRST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLADE_THIRST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLADE_THIRST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLESS_WEAPON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLESS_WEAPON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLESS_WEAPON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLESS_WEAPON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLINDNESS_AND_DEAFNESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLINDNESS_AND_DEAFNESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLINDNESS_AND_DEAFNESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLINDNESS_AND_DEAFNESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BLOOD_FRENZY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BLOOD_FRENZY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BLOOD_FRENZY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BLOOD_FRENZY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BOMBARDMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BOMBARDMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BOMBARDMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BOMBARDMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BULLS_STRENGTH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BULLS_STRENGTH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BULLS_STRENGTH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BULLS_STRENGTH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_BURNING_HANDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_BURNING_HANDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_BURNING_HANDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_BURNING_HANDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CALL_LIGHTNING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CALL_LIGHTNING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CALL_LIGHTNING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CALL_LIGHTNING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CAMOFLAGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CAMOFLAGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CAMOFLAGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CAMOFLAGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CATS_GRACE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CATS_GRACE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CATS_GRACE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CATS_GRACE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CHAIN_LIGHTNING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CHAIN_LIGHTNING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CHAIN_LIGHTNING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CHAIN_LIGHTNING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARGER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CHARGER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CHARGER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CHARGER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_MONSTER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_MONSTER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CHARM_MONSTER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CHARM_MONSTER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CHARM_PERSON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CHARM_PERSON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON_OR_ANIMAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON_OR_ANIMAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CHARM_PERSON_OR_ANIMAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CHARM_PERSON_OR_ANIMAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DEATH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DEATH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CIRCLE_OF_DEATH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CIRCLE_OF_DEATH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DOOM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DOOM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CIRCLE_OF_DOOM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CIRCLE_OF_DOOM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CLARITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CLARITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CLARITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CLARITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CLOAK_OF_CHAOS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CLOAK_OF_CHAOS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CLOAK_OF_CHAOS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CLOAK_OF_CHAOS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CLOUD_OF_BEWILDERMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CLOUD_OF_BEWILDERMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CLOUD_OF_BEWILDERMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CLOUD_OF_BEWILDERMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CLOUDKILL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CLOUDKILL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CLOUDKILL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CLOUDKILL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_COLOR_SPRAY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_COLOR_SPRAY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_COLOR_SPRAY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_COLOR_SPRAY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_COMBUST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_COMBUST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_COMBUST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_COMBUST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CONE_OF_COLD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CONE_OF_COLD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CONE_OF_COLD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CONE_OF_COLD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CONFUSION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CONFUSION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CONFUSION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CONFUSION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CONTAGION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CONTAGION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CONTAGION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CONTAGION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CONTINUAL_FLAME") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CONTINUAL_FLAME") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CONTINUAL_FLAME,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CONTINUAL_FLAME");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CONTROL_UNDEAD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CONTROL_UNDEAD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CONTROL_UNDEAD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CONTROL_UNDEAD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CRAFT_HARPER_ITEM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CRAFT_HARPER_ITEM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CRAFT_HARPER_ITEM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CRAFT_HARPER_ITEM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CREATE_GREATER_UNDEAD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CREATE_GREATER_UNDEAD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CREATE_GREATER_UNDEAD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CREATE_GREATER_UNDEAD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CREATE_UNDEAD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CREATE_UNDEAD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CREATE_UNDEAD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CREATE_UNDEAD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CREEPING_DOOM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CREEPING_DOOM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CREEPING_DOOM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CREEPING_DOOM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CRUMBLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CRUMBLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CRUMBLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CRUMBLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_CRITICAL_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CURE_CRITICAL_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CURE_CRITICAL_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CURE_CRITICAL_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_LIGHT_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CURE_LIGHT_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CURE_LIGHT_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CURE_LIGHT_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_MINOR_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CURE_MINOR_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CURE_MINOR_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CURE_MINOR_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_MODERATE_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CURE_MODERATE_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CURE_MODERATE_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CURE_MODERATE_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_CURE_SERIOUS_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_CURE_SERIOUS_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_CURE_SERIOUS_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_CURE_SERIOUS_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DARKFIRE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DARKFIRE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DARKFIRE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DARKFIRE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DARKNESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DARKNESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DARKNESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DARKNESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DARKVISION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DARKVISION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DARKVISION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DARKVISION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DAZE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DAZE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DAZE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DAZE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DEAFENING_CLANG") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DEAFENING_CLANG") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DEAFENING_CLANG,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DEAFENING_CLANG");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DEATH_ARMOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DEATH_ARMOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DEATH_ARMOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DEATH_ARMOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DEATH_WARD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DEATH_WARD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DEATH_WARD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DEATH_WARD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DECHARGER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DECHARGER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DECHARGER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DECHARGER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_AVATAR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DECK_AVATAR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DECK_AVATAR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DECK_AVATAR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_BUTTERFLYSPRAY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DECK_BUTTERFLYSPRAY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DECK_BUTTERFLYSPRAY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DECK_BUTTERFLYSPRAY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_GEMSPRAY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DECK_GEMSPRAY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DECK_GEMSPRAY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DECK_GEMSPRAY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DECK_OF_MANY_THINGS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DECK_OF_MANY_THINGS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DECK_OF_MANY_THINGS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DECK_OF_MANY_THINGS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DELAYED_BLAST_FIREBALL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DELAYED_BLAST_FIREBALL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DELAYED_BLAST_FIREBALL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DELAYED_BLAST_FIREBALL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DESTRUCTION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DESTRUCTION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DESTRUCTION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DESTRUCTION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DIRGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DIRGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DIRGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DIRGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DISMISSAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DISMISSAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DISMISSAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DISMISSAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DISPEL_MAGIC") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DISPEL_MAGIC") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DISPEL_MAGIC,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DISPEL_MAGIC");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DISPLACEMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DISPLACEMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DISPLACEMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DISPLACEMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_FAVOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_FAVOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DIVINE_FAVOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DIVINE_FAVOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_MIGHT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_MIGHT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DIVINE_MIGHT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DIVINE_MIGHT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_POWER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_POWER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DIVINE_POWER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DIVINE_POWER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_SHIELD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_SHIELD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DIVINE_SHIELD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DIVINE_SHIELD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_ANIMAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_ANIMAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DOMINATE_ANIMAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DOMINATE_ANIMAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_MONSTER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_MONSTER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DOMINATE_MONSTER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_PERSON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_PERSON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DOMINATE_PERSON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DOMINATE_PERSON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DOOM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DOOM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DOOM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DOOM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_DROWN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_DROWN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_DROWN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_DROWN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EAGLE_SPLEDOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EAGLE_SPLEDOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EAGLE_SPLEDOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EAGLE_SPLEDOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EARTHQUAKE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EARTHQUAKE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EARTHQUAKE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EARTHQUAKE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ELECTRIC_JOLT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ELECTRIC_JOLT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ELECTRIC_JOLT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ELECTRIC_JOLT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SHIELD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SHIELD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ELEMENTAL_SHIELD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ELEMENTAL_SHIELD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SUMMONING_ITEM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SUMMONING_ITEM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ELEMENTAL_SUMMONING_ITEM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ELEMENTAL_SUMMONING_ITEM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SWARM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SWARM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ELEMENTAL_SWARM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ELEMENTAL_SWARM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENDURANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENDURANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENDURANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENDURANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENDURE_ELEMENTS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENDURE_ELEMENTS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENDURE_ELEMENTS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENDURE_ELEMENTS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_BUFFER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_BUFFER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENERGY_BUFFER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENERGY_BUFFER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_DRAIN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_DRAIN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENERGY_DRAIN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENERGY_DRAIN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENERVATION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENERVATION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENERVATION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENERVATION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENTANGLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENTANGLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENTANGLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENTANGLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ENTROPIC_SHIELD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ENTROPIC_SHIELD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ENTROPIC_SHIELD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ENTROPIC_SHIELD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_DRAGON_KNIGHT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_DRAGON_KNIGHT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EPIC_DRAGON_KNIGHT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EPIC_DRAGON_KNIGHT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_HELLBALL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_HELLBALL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EPIC_HELLBALL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EPIC_HELLBALL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MAGE_ARMOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MAGE_ARMOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EPIC_MAGE_ARMOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EPIC_MAGE_ARMOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MUMMY_DUST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MUMMY_DUST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EPIC_MUMMY_DUST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EPIC_MUMMY_DUST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_RUIN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EPIC_RUIN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EPIC_RUIN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EPIC_RUIN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ETHEREAL_VISAGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ETHEREAL_VISAGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ETHEREAL_VISAGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ETHEREAL_VISAGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ETHEREALNESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ETHEREALNESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ETHEREALNESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ETHEREALNESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EVARDS_BLACK_TENTACLES") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EVARDS_BLACK_TENTACLES") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EVARDS_BLACK_TENTACLES,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EVARDS_BLACK_TENTACLES");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_EXPEDITIOUS_RETREAT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_EXPEDITIOUS_RETREAT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_EXPEDITIOUS_RETREAT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_EXPEDITIOUS_RETREAT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FEAR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FEAR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FEAR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FEAR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FEEBLEMIND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FEEBLEMIND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FEEBLEMIND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FEEBLEMIND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FIND_TRAPS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FIND_TRAPS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FIND_TRAPS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FIND_TRAPS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FINGER_OF_DEATH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FINGER_OF_DEATH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FINGER_OF_DEATH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FINGER_OF_DEATH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FIRE_STORM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FIRE_STORM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FIRE_STORM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FIRE_STORM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FIREBALL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FIREBALL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FIREBALL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FIREBALL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FIREBRAND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FIREBRAND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FIREBRAND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FIREBRAND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_ARROW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_ARROW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLAME_ARROW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLAME_ARROW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_LASH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_LASH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLAME_LASH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLAME_LASH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_STRIKE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_STRIKE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLAME_STRIKE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLAME_STRIKE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_WEAPON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLAME_WEAPON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLAME_WEAPON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLAME_WEAPON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLARE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLARE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLARE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLARE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLESH_TO_STONE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLESH_TO_STONE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLESH_TO_STONE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLESH_TO_STONE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FLYING_DEBRIS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FLYING_DEBRIS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FLYING_DEBRIS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FLYING_DEBRIS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FOXS_CUNNING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FOXS_CUNNING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FOXS_CUNNING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FOXS_CUNNING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_FREEDOM_OF_MOVEMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_FREEDOM_OF_MOVEMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_FREEDOM_OF_MOVEMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_FREEDOM_OF_MOVEMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GATE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GATE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GATE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GATE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GEDLEES_ELECTRIC_LOOP") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GEDLEES_ELECTRIC_LOOP") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GEDLEES_ELECTRIC_LOOP,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GEDLEES_ELECTRIC_LOOP");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GHOSTLY_VISAGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GHOSTLY_VISAGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GHOSTLY_VISAGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GHOSTLY_VISAGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GHOUL_TOUCH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GHOUL_TOUCH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GHOUL_TOUCH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GHOUL_TOUCH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GLOBE_OF_INVULNERABILITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GLOBE_OF_INVULNERABILITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GLOBE_OF_INVULNERABILITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GLOBE_OF_INVULNERABILITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GLYPH_OF_WARDING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GLYPH_OF_WARDING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GLYPH_OF_WARDING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GLYPH_OF_WARDING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREASE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREASE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREASE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREASE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREAT_THUNDERCLAP") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREAT_THUNDERCLAP") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREAT_THUNDERCLAP,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREAT_THUNDERCLAP");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_BULLS_STRENGTH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_BULLS_STRENGTH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_BULLS_STRENGTH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_BULLS_STRENGTH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_CATS_GRACE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_CATS_GRACE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_CATS_GRACE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_CATS_GRACE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_DISPELLING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_DISPELLING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_DISPELLING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_DISPELLING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_EAGLE_SPLENDOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_EAGLE_SPLENDOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_EAGLE_SPLENDOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_EAGLE_SPLENDOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_ENDURANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_ENDURANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_ENDURANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_ENDURANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_FOXS_CUNNING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_FOXS_CUNNING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_FOXS_CUNNING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_FOXS_CUNNING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_FANG") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_FANG") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_MAGIC_FANG,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_MAGIC_FANG");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_WEAPON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_WEAPON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_MAGIC_WEAPON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_MAGIC_WEAPON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_OWLS_WISDOM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_OWLS_WISDOM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_OWLS_WISDOM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_OWLS_WISDOM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_PLANAR_BINDING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_PLANAR_BINDING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_PLANAR_BINDING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_PLANAR_BINDING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_RESTORATION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_RESTORATION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_RESTORATION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_RESTORATION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_WEB") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_WEB") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_WEB,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SHADOW_CONJURATION_WEB");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_BREACH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_BREACH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SPELL_BREACH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SPELL_BREACH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_MANTLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_MANTLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_SPELL_MANTLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_SPELL_MANTLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_STONESKIN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GREATER_STONESKIN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GREATER_STONESKIN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GREATER_STONESKIN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_ACID") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_ACID") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_ACID,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_ACID");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CALTROPS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CALTROPS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_CALTROPS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_CALTROPS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHICKEN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHICKEN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_CHICKEN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_CHICKEN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHOKING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHOKING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_CHOKING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_CHOKING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_FIRE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_FIRE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_FIRE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_FIRE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_HOLY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_HOLY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_HOLY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_HOLY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_TANGLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_TANGLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_TANGLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_TANGLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_THUNDERSTONE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_THUNDERSTONE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GRENADE_THUNDERSTONE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GRENADE_THUNDERSTONE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_GUST_OF_WIND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_GUST_OF_WIND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_GUST_OF_WIND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_GUST_OF_WIND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HAMMER_OF_THE_GODS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HAMMER_OF_THE_GODS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HAMMER_OF_THE_GODS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HAMMER_OF_THE_GODS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HARM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HARM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HARM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HARM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HASTE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HASTE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HASTE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HASTE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HEAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HEAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HEAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HEAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HEALING_CIRCLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HEALING_CIRCLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HEALING_CIRCLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HEALING_CIRCLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HEALING_STING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HEALING_STING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HEALING_STING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HEALING_STING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HEALINGKIT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HEALINGKIT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HEALINGKIT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HEALINGKIT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_ANIMAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_ANIMAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HOLD_ANIMAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HOLD_ANIMAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_MONSTER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_MONSTER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HOLD_MONSTER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HOLD_MONSTER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_PERSON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HOLD_PERSON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HOLD_PERSON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HOLD_PERSON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLY_AURA") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HOLY_AURA") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HOLY_AURA,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HOLY_AURA");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HOLY_SWORD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HOLY_SWORD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HOLY_SWORD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HOLY_SWORD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORIZIKAULS_BOOM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORIZIKAULS_BOOM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORIZIKAULS_BOOM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORIZIKAULS_BOOM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORRID_WILTING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORRID_WILTING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORRID_WILTING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORRID_WILTING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_ASSIGN_MOUNT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_ASSIGN_MOUNT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORSE_ASSIGN_MOUNT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORSE_ASSIGN_MOUNT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_DISMOUNT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_DISMOUNT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORSE_DISMOUNT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORSE_DISMOUNT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MENU") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MENU") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORSE_MENU,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORSE_MENU");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MOUNT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MOUNT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORSE_MOUNT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORSE_MOUNT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_DISMOUNT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_DISMOUNT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORSE_PARTY_DISMOUNT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORSE_PARTY_DISMOUNT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_MOUNT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_MOUNT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_HORSE_PARTY_MOUNT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_HORSE_PARTY_MOUNT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ICE_DAGGER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ICE_DAGGER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ICE_DAGGER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ICE_DAGGER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ICE_STORM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ICE_STORM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ICE_STORM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ICE_STORM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IDENTIFY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IDENTIFY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IDENTIFY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IDENTIFY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IMPLOSION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IMPLOSION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IMPLOSION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IMPLOSION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IMPROVED_INVISIBILITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IMPROVED_INVISIBILITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IMPROVED_INVISIBILITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IMPROVED_INVISIBILITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INCENDIARY_CLOUD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INCENDIARY_CLOUD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INCENDIARY_CLOUD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INCENDIARY_CLOUD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFERNO") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFERNO") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFERNO,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFERNO");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFESTATION_OF_MAGGOTS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFESTATION_OF_MAGGOTS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFESTATION_OF_MAGGOTS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFESTATION_OF_MAGGOTS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_CRITICAL_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_CRITICAL_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFLICT_CRITICAL_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFLICT_CRITICAL_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_LIGHT_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_LIGHT_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFLICT_LIGHT_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFLICT_LIGHT_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MINOR_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MINOR_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFLICT_MINOR_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFLICT_MINOR_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MODERATE_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MODERATE_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFLICT_MODERATE_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFLICT_MODERATE_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_SERIOUS_WOUNDS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_SERIOUS_WOUNDS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INFLICT_SERIOUS_WOUNDS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INFLICT_SERIOUS_WOUNDS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INVISIBILITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INVISIBILITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_PURGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_PURGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INVISIBILITY_PURGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INVISIBILITY_PURGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_SPHERE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_SPHERE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_INVISIBILITY_SPHERE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_INVISIBILITY_SPHERE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_BLUE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_BLUE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_BLUE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_BLUE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DEEP_RED") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DEEP_RED") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_DEEP_RED,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_DEEP_RED");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DUSTY_ROSE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DUSTY_ROSE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_DUSTY_ROSE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_DUSTY_ROSE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PALE_BLUE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PALE_BLUE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_PALE_BLUE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_PALE_BLUE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_PINK,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_PINK");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK_GREEN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK_GREEN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_PINK_GREEN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_PINK_GREEN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_SCARLET_BLUE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_SCARLET_BLUE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IOUN_STONE_SCARLET_BLUE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IOUN_STONE_SCARLET_BLUE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_IRONGUTS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_IRONGUTS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_IRONGUTS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_IRONGUTS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_GREATER_MISSILE_STORM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_GREATER_MISSILE_STORM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ISAACS_GREATER_MISSILE_STORM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ISAACS_GREATER_MISSILE_STORM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_LESSER_MISSILE_STORM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_LESSER_MISSILE_STORM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ISAACS_LESSER_MISSILE_STORM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ISAACS_LESSER_MISSILE_STORM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_KEEN_EDGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_KEEN_EDGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_KEEN_EDGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_KEEN_EDGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_KNOCK") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_KNOCK") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_KNOCK,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_KNOCK");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_KOBOLD_JUMP") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_KOBOLD_JUMP") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_KOBOLD_JUMP,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_KOBOLD_JUMP");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LEGEND_LORE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LEGEND_LORE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LEGEND_LORE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LEGEND_LORE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_DISPEL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_DISPEL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LESSER_DISPEL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LESSER_DISPEL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_MIND_BLANK") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_MIND_BLANK") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LESSER_MIND_BLANK,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LESSER_MIND_BLANK");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_PLANAR_BINDING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_PLANAR_BINDING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LESSER_PLANAR_BINDING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LESSER_PLANAR_BINDING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_RESTORATION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_RESTORATION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LESSER_RESTORATION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LESSER_RESTORATION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_BREACH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_BREACH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LESSER_SPELL_BREACH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LESSER_SPELL_BREACH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_MANTLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_MANTLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LESSER_SPELL_MANTLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LESSER_SPELL_MANTLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LIGHT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LIGHT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LIGHT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LIGHT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_LIGHTNING_BOLT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_LIGHTNING_BOLT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_LIGHTNING_BOLT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_LIGHTNING_BOLT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGE_ARMOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGE_ARMOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGE_ARMOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGE_ARMOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_CHAOS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_CHAOS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_CHAOS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_CHAOS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_EVIL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_EVIL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_EVIL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_EVIL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_GOOD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_GOOD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_GOOD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_GOOD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_LAW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_LAW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_LAW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_CIRCLE_AGAINST_LAW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_FANG") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_FANG") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_FANG,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_FANG");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_MISSILE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_MISSILE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_MISSILE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_MISSILE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_VESTMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_VESTMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_VESTMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_VESTMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_WEAPON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_WEAPON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MAGIC_WEAPON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MAGIC_WEAPON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_BLINDNESS_AND_DEAFNESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MASS_BLINDNESS_AND_DEAFNESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MASS_BLINDNESS_AND_DEAFNESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MASS_BLINDNESS_AND_DEAFNESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_CAMOFLAGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MASS_CAMOFLAGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MASS_CAMOFLAGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MASS_CAMOFLAGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_CHARM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MASS_CHARM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MASS_CHARM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MASS_CHARM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_HASTE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MASS_HASTE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MASS_HASTE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MASS_HASTE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MASS_HEAL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MASS_HEAL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MASS_HEAL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MASS_HEAL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MELFS_ACID_ARROW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MELFS_ACID_ARROW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MELFS_ACID_ARROW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MELFS_ACID_ARROW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_BREATH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_BREATH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MESTILS_ACID_BREATH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MESTILS_ACID_BREATH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_SHEATH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_SHEATH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MESTILS_ACID_SHEATH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MESTILS_ACID_SHEATH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_METEOR_SWARM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_METEOR_SWARM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_METEOR_SWARM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_METEOR_SWARM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MIND_BLANK") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MIND_BLANK") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MIND_BLANK,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MIND_BLANK");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MIND_FOG") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MIND_FOG") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MIND_FOG,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MIND_FOG");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MINOR_GLOBE_OF_INVULNERABILITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MINOR_GLOBE_OF_INVULNERABILITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MINOR_GLOBE_OF_INVULNERABILITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MINOR_GLOBE_OF_INVULNERABILITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MONSTROUS_REGENERATION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MONSTROUS_REGENERATION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MONSTROUS_REGENERATION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MONSTROUS_REGENERATION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_DISJUNCTION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_DISJUNCTION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MORDENKAINENS_DISJUNCTION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MORDENKAINENS_DISJUNCTION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_SWORD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_SWORD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_MORDENKAINENS_SWORD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_MORDENKAINENS_SWORD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_NATURES_BALANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_NATURES_BALANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_NATURES_BALANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_NATURES_BALANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_BURST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_BURST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_BURST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_NEGATIVE_ENERGY_BURST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_PROTECTION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_PROTECTION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_PROTECTION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_NEGATIVE_ENERGY_PROTECTION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_RAY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_RAY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_RAY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_NEGATIVE_ENERGY_RAY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_NEUTRALIZE_POISON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_NEUTRALIZE_POISON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_NEUTRALIZE_POISON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_NEUTRALIZE_POISON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ONE_WITH_THE_LAND") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ONE_WITH_THE_LAND") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ONE_WITH_THE_LAND,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ONE_WITH_THE_LAND");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_OWLS_INSIGHT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_OWLS_INSIGHT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_OWLS_INSIGHT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_OWLS_INSIGHT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_OWLS_WISDOM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_OWLS_WISDOM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_OWLS_WISDOM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_OWLS_WISDOM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PALADIN_SUMMON_MOUNT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PALADIN_SUMMON_MOUNT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PALADIN_SUMMON_MOUNT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PALADIN_SUMMON_MOUNT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PHANTASMAL_KILLER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PHANTASMAL_KILLER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PHANTASMAL_KILLER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PHANTASMAL_KILLER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_ALLY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_ALLY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PLANAR_ALLY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PLANAR_ALLY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_BINDING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_BINDING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PLANAR_BINDING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PLANAR_BINDING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_POISON") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_POISON") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_POISON,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_POISON");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_POLYMORPH_SELF") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_POLYMORPH_SELF") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_POLYMORPH_SELF,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_POLYMORPH_SELF");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_KILL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_KILL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_POWER_WORD_KILL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_POWER_WORD_KILL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_STUN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_STUN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_POWER_WORD_STUN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_POWER_WORD_STUN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_POWERSTONE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_POWERSTONE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_POWERSTONE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_POWERSTONE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PRAYER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PRAYER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PRAYER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PRAYER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PREMONITION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PREMONITION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PREMONITION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PREMONITION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PRISMATIC_SPRAY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PRISMATIC_SPRAY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PRISMATIC_SPRAY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PRISMATIC_SPRAY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION__FROM_CHAOS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION__FROM_CHAOS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PROTECTION__FROM_CHAOS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PROTECTION__FROM_CHAOS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_ELEMENTS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_ELEMENTS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PROTECTION_FROM_ELEMENTS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PROTECTION_FROM_ELEMENTS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_EVIL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_EVIL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PROTECTION_FROM_EVIL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PROTECTION_FROM_EVIL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_GOOD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_GOOD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PROTECTION_FROM_GOOD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PROTECTION_FROM_GOOD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_LAW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_LAW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PROTECTION_FROM_LAW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PROTECTION_FROM_LAW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_SPELLS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_SPELLS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_PROTECTION_FROM_SPELLS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_PROTECTION_FROM_SPELLS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_QUILLFIRE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_QUILLFIRE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_QUILLFIRE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_QUILLFIRE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RAISE_DEAD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RAISE_DEAD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RAISE_DEAD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RAISE_DEAD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_ENFEEBLEMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_ENFEEBLEMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RAY_OF_ENFEEBLEMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RAY_OF_ENFEEBLEMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_FROST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_FROST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RAY_OF_FROST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RAY_OF_FROST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_REGENERATE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_REGENERATE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_REGENERATE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_REGENERATE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_BLINDNESS_AND_DEAFNESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_BLINDNESS_AND_DEAFNESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_REMOVE_BLINDNESS_AND_DEAFNESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_REMOVE_BLINDNESS_AND_DEAFNESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_CURSE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_CURSE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_REMOVE_CURSE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_REMOVE_CURSE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_DISEASE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_DISEASE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_REMOVE_DISEASE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_REMOVE_DISEASE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_FEAR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_FEAR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_REMOVE_FEAR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_REMOVE_FEAR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_PARALYSIS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_PARALYSIS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_REMOVE_PARALYSIS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_REMOVE_PARALYSIS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RESIST_ELEMENTS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RESIST_ELEMENTS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RESIST_ELEMENTS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RESIST_ELEMENTS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RESISTANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RESISTANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RESISTANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RESISTANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RESTORATION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RESTORATION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RESTORATION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RESTORATION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_RESURRECTION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_RESURRECTION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_RESURRECTION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_RESURRECTION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_ROD_OF_WONDER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_ROD_OF_WONDER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_ROD_OF_WONDER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_ROD_OF_WONDER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SANCTUARY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SANCTUARY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SANCTUARY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SANCTUARY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SCARE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SCARE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SCARE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SCARE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SCINTILLATING_SPHERE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SCINTILLATING_SPHERE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SCINTILLATING_SPHERE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SCINTILLATING_SPHERE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SEARING_LIGHT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SEARING_LIGHT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SEARING_LIGHT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SEARING_LIGHT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SEE_INVISIBILITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SEE_INVISIBILITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SEE_INVISIBILITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SEE_INVISIBILITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_CONE_OF_COLD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_CONE_OF_COLD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADES_CONE_OF_COLD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADES_CONE_OF_COLD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_FIREBALL") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_FIREBALL") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADES_FIREBALL,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADES_FIREBALL");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_STONESKIN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_STONESKIN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADES_STONESKIN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADES_STONESKIN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_SUMMON_SHADOW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_SUMMON_SHADOW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADES_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADES_SUMMON_SHADOW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_WALL_OF_FIRE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADES_WALL_OF_FIRE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADES_WALL_OF_FIRE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADES_WALL_OF_FIRE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_DARKNESS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_DARKNESS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_DARKNESS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_CONJURATION_DARKNESS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_INIVSIBILITY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_INIVSIBILITY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_INIVSIBILITY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_CONJURATION_INIVSIBILITY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGE_ARMOR") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGE_ARMOR") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_MAGE_ARMOR,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_CONJURATION_MAGE_ARMOR");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGIC_MISSILE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGIC_MISSILE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_MAGIC_MISSILE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_CONJURATION_MAGIC_MISSILE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_SUMMON_SHADOW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_SUMMON_SHADOW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_CONJURATION_SUMMON_SHADOW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_DAZE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_DAZE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_DAZE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_DAZE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_EVADE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_EVADE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_EVADE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_EVADE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_SHIELD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_SHIELD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHADOW_SHIELD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHADOW_SHIELD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHAPECHANGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHAPECHANGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHAPECHANGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHAPECHANGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHELGARNS_PERSISTENT_BLADE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHELGARNS_PERSISTENT_BLADE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHELGARNS_PERSISTENT_BLADE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHELGARNS_PERSISTENT_BLADE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHIELD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHIELD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_FAITH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_FAITH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHIELD_OF_FAITH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHIELD_OF_FAITH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_LAW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_LAW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SHIELD_OF_LAW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SHIELD_OF_LAW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SILENCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SILENCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SILENCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SILENCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SLAY_LIVING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SLAY_LIVING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SLAY_LIVING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SLAY_LIVING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SLEEP") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SLEEP") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SLEEP,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SLEEP");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SLOW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SLOW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SLOW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SLOW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SOUND_BURST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SOUND_BURST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SOUND_BURST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SOUND_BURST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SPELL_MANTLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SPELL_MANTLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SPELL_MANTLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SPELL_MANTLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SPELL_RESISTANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SPELL_RESISTANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SPELL_RESISTANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SPELL_RESISTANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SPELLSTAFF") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SPELLSTAFF") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SPELLSTAFF,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SPELLSTAFF");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SPHERE_OF_CHAOS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SPHERE_OF_CHAOS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SPHERE_OF_CHAOS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SPHERE_OF_CHAOS");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SPIKE_GROWTH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SPIKE_GROWTH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SPIKE_GROWTH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SPIKE_GROWTH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_STINKING_CLOUD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_STINKING_CLOUD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_STINKING_CLOUD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_STINKING_CLOUD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_STONE_BONES") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_STONE_BONES") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_STONE_BONES,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_STONE_BONES");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_STONE_TO_FLESH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_STONE_TO_FLESH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_STONE_TO_FLESH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_STONE_TO_FLESH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_STONEHOLD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_STONEHOLD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_STONEHOLD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_STONEHOLD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_STONESKIN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_STONESKIN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_STONESKIN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_STONESKIN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_STORM_OF_VENGEANCE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_STORM_OF_VENGEANCE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_STORM_OF_VENGEANCE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_STORM_OF_VENGEANCE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_I") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_I") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_I,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_I");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_II") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_II") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_II,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_II");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_III") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_III") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_III,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_III");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IV") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IV") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_IV,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_IV");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_V") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_V") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_V,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_V");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VI") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VI") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VI,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_VI");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VII") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VII") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VII,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_VII");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VIII") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VIII") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VIII,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_VIII");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IX") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IX") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_IX,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_CREATURE_IX");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_SHADOW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_SHADOW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUMMON_SHADOW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUMMON_SHADOW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUNBEAM") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUNBEAM") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUNBEAM,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUNBEAM");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_SUNBURST") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_SUNBURST") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_SUNBURST,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_SUNBURST");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TASHAS_HIDEOUS_LAUGHTER") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TASHAS_HIDEOUS_LAUGHTER") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TASHAS_HIDEOUS_LAUGHTER,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TASHAS_HIDEOUS_LAUGHTER");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TENSERS_TRANSFORMATION") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TENSERS_TRANSFORMATION") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TENSERS_TRANSFORMATION,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TENSERS_TRANSFORMATION");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TIME_STOP") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TIME_STOP") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TIME_STOP,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TIME_STOP");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_ARROW") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_ARROW") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TRAP_ARROW,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TRAP_ARROW");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_BOLT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_BOLT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TRAP_BOLT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TRAP_BOLT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_DART") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_DART") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TRAP_DART,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TRAP_DART");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_SHURIKEN") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TRAP_SHURIKEN") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TRAP_SHURIKEN,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TRAP_SHURIKEN");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TRUE_SEEING") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TRUE_SEEING") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TRUE_SEEING,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TRUE_SEEING");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TRUE_STRIKE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TRUE_STRIKE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TRUE_STRIKE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TRUE_STRIKE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_TYMORAS_SMILE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_TYMORAS_SMILE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_TYMORAS_SMILE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_TYMORAS_SMILE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_UNDEATH_TO_DEATH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_UNDEATH_TO_DEATH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_UNDEATH_TO_DEATH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_UNDEATH_TO_DEATH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_UNDEATHS_ETERNAL_FOE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_UNDEATHS_ETERNAL_FOE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_UNDEATHS_ETERNAL_FOE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_UNDEATHS_ETERNAL_FOE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_UNHOLY_AURA") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_UNHOLY_AURA") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_UNHOLY_AURA,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_UNHOLY_AURA");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_VAMPIRIC_TOUCH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_VAMPIRIC_TOUCH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_VAMPIRIC_TOUCH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_VAMPIRIC_TOUCH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_VINE_MINE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_VINE_MINE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_CAMOUFLAGE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_CAMOUFLAGE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_VINE_MINE_CAMOUFLAGE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_VINE_MINE_CAMOUFLAGE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_ENTANGLE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_ENTANGLE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_VINE_MINE_ENTANGLE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_VINE_MINE_ENTANGLE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_HAMPER_MOVEMENT") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_HAMPER_MOVEMENT") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_VINE_MINE_HAMPER_MOVEMENT,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_VINE_MINE_HAMPER_MOVEMENT");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_VIRTUE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_VIRTUE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_VIRTUE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_VIRTUE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WAIL_OF_THE_BANSHEE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WAIL_OF_THE_BANSHEE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WAIL_OF_THE_BANSHEE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WAIL_OF_THE_BANSHEE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WALL_OF_FIRE") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WALL_OF_FIRE") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WALL_OF_FIRE,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WALL_OF_FIRE");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WAR_CRY") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WAR_CRY") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WAR_CRY,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WAR_CRY");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WEB") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WEB") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WEB,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WEB");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WEIRD") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WEIRD") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WEIRD,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WEIRD");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WORD_OF_FAITH") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WORD_OF_FAITH") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WORD_OF_FAITH,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WORD_OF_FAITH");
		return 1;
	}
}


if( GetLocalInt(OBJECT_SELF,"bSPELL_WOUNDING_WHISPERS") > 0 || GetLocalInt(OBJECT_SELF,"bSPELL_WOUNDING_WHISPERS") == -1)
{
	if(d6() < 3)
	{
		ActionCastSpellAtObject(SPELL_WOUNDING_WHISPERS,oTarget,METAMAGIC_NONE,TRUE);
		UpdateVar("bSPELL_WOUNDING_WHISPERS");
		return 1;
	}
}
return 0;
}

void main()
{
    object oEnemy = bkAcquireTarget();

    __TurnCombatRoundOn(TRUE);
    if(!Template_UseAbility(oEnemy))
    {
        if(!Template_CastSpell(oEnemy))
        {

        }
    }
    __TurnCombatRoundOn(FALSE);
}
