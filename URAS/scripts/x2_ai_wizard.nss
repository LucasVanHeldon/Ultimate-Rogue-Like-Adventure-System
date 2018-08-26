#include "inc_mmp"
#include "inc_prestigator"
#include "inc_evoker"
#include "inc_conjurer"

// special
/*
if(GetHasSpell(SPELL_GREATER_PLANAR_BINDING)) {ActionCastSpellAtObject(SPELL_GREATER_PLANAR_BINDING,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_RESTORATION)) {ActionCastSpellAtObject(SPELL_GREATER_RESTORATION,oTarget); return 1;}
if(GetHasSpell(SPELL_GUST_OF_WIND)) {ActionCastSpellAtObject(SPELL_GUST_OF_WIND,oTarget); return 1;}
if(GetHasSpell(SPELL_EXPEDITIOUS_RETREAT)) {ActionCastSpellAtObject(SPELL_EXPEDITIOUS_RETREAT,oTarget); return 1;}
if(GetHasSpell(SPELL_GLYPH_OF_WARDING)) {ActionCastSpellAtObject(SPELL_GLYPH_OF_WARDING,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_FANG)) {ActionCastSpellAtObject(SPELL_MAGIC_FANG,oTarget); return 1;}
if(GetHasSpell(SPELL_LESSER_PLANAR_BINDING)) {ActionCastSpellAtObject(SPELL_LESSER_PLANAR_BINDING,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_BLUE)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_BLUE,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_DEEP_RED)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_DEEP_RED,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_DUSTY_ROSE)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_DUSTY_ROSE,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_PALE_BLUE)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_PALE_BLUE,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_PINK)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_PINK,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_PINK_GREEN)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_PINK_GREEN,oTarget); return 1;}
if(GetHasSpell(SPELL_IOUN_STONE_SCARLET_BLUE)) {ActionCastSpellAtObject(SPELL_IOUN_STONE_SCARLET_BLUE,oTarget); return 1;}
if(GetHasSpell(SPELL_LEGEND_LORE)) {ActionCastSpellAtObject(SPELL_LEGEND_LORE,oTarget); return 1;}
if(GetHasSpell(SPELL_KNOCK)) {ActionCastSpellAtObject(SPELL_KNOCK,oTarget); return 1;}
if(GetHasSpell(SPELL_BLACK_BLADE_OF_DISASTER)) {ActionCastSpellAtObject(SPELL_BLACK_BLADE_OF_DISASTER,oTarget); return 1;}
if(GetHasSpell(SPELL_QUILLFIRE)) {ActionCastSpellAtObject(SPELL_QUILLFIRE,oTarget); return 1;}
if(GetHasSpell(SPELL_RAISE_DEAD)) {ActionCastSpellAtObject(SPELL_RAISE_DEAD,oTarget); return 1;}


if(GetHasSpell(SPELL_MORDENKAINENS_SWORD)) {ActionCastSpellAtObject(SPELL_MORDENKAINENS_SWORD,oTarget); return 1;}
if(GetHasSpell(SPELL_POWERSTONE)) {ActionCastSpellAtObject(SPELL_POWERSTONE,oTarget); return 1;}
if(GetHasSpell(SPELL_PREMONITION)) {ActionCastSpellAtObject(SPELL_PREMONITION,oTarget); return 1;}
if(GetHasSpell(SPELL_MIND_BLANK)) {ActionCastSpellAtObject(SPELL_MIND_BLANK,oTarget); return 1;}
if(GetHasSpell(SPELL_MIND_FOG)) {ActionCastSpellAtObject(SPELL_MIND_FOG,oTarget); return 1;}
if(GetHasSpell(SPELL_MINOR_GLOBE_OF_INVULNERABILITY)) {ActionCastSpellAtObject(SPELL_MINOR_GLOBE_OF_INVULNERABILITY,oTarget); return 1;}
if(GetHasSpell(SPELL_MONSTROUS_REGENERATION)) {ActionCastSpellAtObject(SPELL_MONSTROUS_REGENERATION,oTarget); return 1;}
if(GetHasSpell(SPELL_NEGATIVE_ENERGY_PROTECTION)) {ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_PROTECTION,oTarget); return 1;}
if(GetHasSpell(SPELL_NEUTRALIZE_POISON)) {ActionCastSpellAtObject(SPELL_NEUTRALIZE_POISON,oTarget); return 1;}
if(GetHasSpell(SPELL_ONE_WITH_THE_LAND)) {ActionCastSpellAtObject(SPELL_ONE_WITH_THE_LAND,oTarget); return 1;}
if(GetHasSpell(SPELL_OWLS_INSIGHT)) {ActionCastSpellAtObject(SPELL_OWLS_INSIGHT,oTarget); return 1;}
if(GetHasSpell(SPELL_OWLS_WISDOM)) {ActionCastSpellAtObject(SPELL_OWLS_WISDOM,oTarget); return 1;}
if(GetHasSpell(SPELL_PALADIN_SUMMON_MOUNT)) {ActionCastSpellAtObject(SPELL_PALADIN_SUMMON_MOUNT,oTarget); return 1;}
if(GetHasSpell(SPELL_PLANAR_ALLY)) {ActionCastSpellAtObject(SPELL_PLANAR_ALLY,oTarget); return 1;}
if(GetHasSpell(SPELL_PLANAR_BINDING)) {ActionCastSpellAtObject(SPELL_PLANAR_BINDING,oTarget); return 1;}
if(GetHasSpell(SPELL_REGENERATE)) {ActionCastSpellAtObject(SPELL_REGENERATE,oTarget); return 1;}
if(GetHasSpell(SPELL_REMOVE_BLINDNESS_AND_DEAFNESS)) {ActionCastSpellAtObject(SPELL_REMOVE_BLINDNESS_AND_DEAFNESS,oTarget); return 1;}
if(GetHasSpell(SPELL_REMOVE_CURSE)) {ActionCastSpellAtObject(SPELL_REMOVE_CURSE,oTarget); return 1;}
if(GetHasSpell(SPELL_REMOVE_DISEASE)) {ActionCastSpellAtObject(SPELL_REMOVE_DISEASE,oTarget); return 1;}
if(GetHasSpell(SPELL_REMOVE_FEAR)) {ActionCastSpellAtObject(SPELL_REMOVE_FEAR,oTarget); return 1;}
if(GetHasSpell(SPELL_REMOVE_PARALYSIS)) {ActionCastSpellAtObject(SPELL_REMOVE_PARALYSIS,oTarget); return 1;}
if(GetHasSpell(SPELL_RESIST_ELEMENTS)) {ActionCastSpellAtObject(SPELL_RESIST_ELEMENTS,oTarget); return 1;}
if(GetHasSpell(SPELL_RESISTANCE)) {ActionCastSpellAtObject(SPELL_RESISTANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_RESTORATION)) {ActionCastSpellAtObject(SPELL_RESTORATION,oTarget); return 1;}
if(GetHasSpell(SPELL_RESURRECTION)) {ActionCastSpellAtObject(SPELL_RESURRECTION,oTarget); return 1;}
if(GetHasSpell(SPELL_ROD_OF_WONDER)) {ActionCastSpellAtObject(SPELL_ROD_OF_WONDER,oTarget); return 1;}

if(GetHasSpell(SPELL_SANCTUARY)) {ActionCastSpellAtObject(SPELL_SANCTUARY,oTarget); return 1;}

if(GetHasSpell(SPELL_SEE_INVISIBILITY)) {ActionCastSpellAtObject(SPELL_SEE_INVISIBILITY,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADOW_CONJURATION_INIVSIBILITY)) {ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_INIVSIBILITY,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADOW_CONJURATION_MAGE_ARMOR)) {ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_MAGE_ARMOR,oTarget); return 1;}
if(GetHasSpell(SPELL_SHAPECHANGE)) {ActionCastSpellAtObject(SPELL_SHAPECHANGE,oTarget); return 1;}
if(GetHasSpell(SPELL_SHIELD)) {ActionCastSpellAtObject(SPELL_SHIELD,oTarget); return 1;}
if(GetHasSpell(SPELL_SHIELD_OF_FAITH)) {ActionCastSpellAtObject(SPELL_SHIELD_OF_FAITH,oTarget); return 1;}
if(GetHasSpell(SPELL_SHIELD_OF_LAW)) {ActionCastSpellAtObject(SPELL_SHIELD_OF_LAW,oTarget); return 1;}
if(GetHasSpell(SPELL_SILENCE)) {ActionCastSpellAtObject(SPELL_SILENCE,oTarget); return 1;}
if(GetHasSpell(SPELL_SLEEP)) {ActionCastSpellAtObject(SPELL_SLEEP,oTarget); return 1;}
if(GetHasSpell(SPELL_SLOW)) {ActionCastSpellAtObject(SPELL_SLOW,oTarget); return 1;}
if(GetHasSpell(SPELL_SPELL_MANTLE)) {ActionCastSpellAtObject(SPELL_SPELL_MANTLE,oTarget); return 1;}
if(GetHasSpell(SPELL_SPELL_RESISTANCE)) {ActionCastSpellAtObject(SPELL_SPELL_RESISTANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_SPELLSTAFF)) {ActionCastSpellAtObject(SPELL_SPELLSTAFF,oTarget); return 1;}
if(GetHasSpell(SPELL_STONE_BONES)) {ActionCastSpellAtObject(SPELL_STONE_BONES,oTarget); return 1;}
if(GetHasSpell(SPELL_TIME_STOP)) {ActionCastSpellAtObject(SPELL_TIME_STOP,oTarget); return 1;}
if(GetHasSpell(SPELL_VIRTUE)) {ActionCastSpellAtObject(SPELL_VIRTUE,oTarget); return 1;}
if(GetHasSpell(SPELL_UNHOLY_AURA)) {ActionCastSpellAtObject(SPELL_UNHOLY_AURA,oTarget); return 1;}
if(GetHasSpell(SPELL_WORD_OF_FAITH)) {ActionCastSpellAtObject(SPELL_WORD_OF_FAITH,oTarget); return 1;}
if(GetHasSpell(SPELL_WEB)) {ActionCastSpellAtObject(SPELL_WEB,oTarget); return 1;}
if(GetHasSpell(SPELL_TENSERS_TRANSFORMATION)) {ActionCastSpellAtObject(SPELL_TENSERS_TRANSFORMATION,oTarget); return 1;}
if(GetHasSpell(SPELL_STONE_TO_FLESH)) {ActionCastSpellAtObject(SPELL_STONE_TO_FLESH,oTarget); return 1;}
if(GetHasSpell(SPELL_STONESKIN)) {ActionCastSpellAtObject(SPELL_STONESKIN,oTarget); return 1;}
if(GetHasSpell(SPELL_SCARE)) {ActionCastSpellAtObject(SPELL_SCARE,oTarget); return 1;}

*/




// usually cast on self, maybe later think of applying to allies.
int CastBuffAtTarget(object oTarget)
{
if(GetIsEnemy(oTarget)) return 0;

if(GetHasSpell(SPELL_BATTLETIDE)) {ActionCastSpellAtObject(SPELL_BATTLETIDE,oTarget); return 1;}
if(GetHasSpell(SPELL_BLADE_THIRST)) {ActionCastSpellAtObject(SPELL_BLADE_THIRST,oTarget); return 1;}
if(GetHasSpell(SPELL_BLOOD_FRENZY)) {ActionCastSpellAtObject(SPELL_BLOOD_FRENZY,oTarget); return 1;}
if(GetHasSpell(SPELL_BULLS_STRENGTH)) {ActionCastSpellAtObject(SPELL_BULLS_STRENGTH,oTarget); return 1;}
if(GetHasSpell(SPELL_CATS_GRACE)) {ActionCastSpellAtObject(SPELL_CATS_GRACE,oTarget); return 1;}
if(GetHasSpell(SPELL_FOXS_CUNNING)) {ActionCastSpellAtObject(SPELL_FOXS_CUNNING,oTarget); return 1;}
if(GetHasSpell(SPELL_EAGLE_SPLEDOR)) {ActionCastSpellAtObject(SPELL_EAGLE_SPLEDOR,oTarget); return 1;}
if(GetHasSpell(SPELL_ELEMENTAL_SHIELD)) {ActionCastSpellAtObject(SPELL_ELEMENTAL_SHIELD,oTarget); return 1;}
if(GetHasSpell(SPELL_DARKVISION)) {ActionCastSpellAtObject(SPELL_DARKVISION,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_BULLS_STRENGTH)) {ActionCastSpellAtObject(SPELL_GREATER_BULLS_STRENGTH,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_CATS_GRACE)) {ActionCastSpellAtObject(SPELL_GREATER_CATS_GRACE,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_DISPELLING)) {ActionCastSpellAtObject(SPELL_GREATER_DISPELLING,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_EAGLE_SPLENDOR)) {ActionCastSpellAtObject(SPELL_GREATER_EAGLE_SPLENDOR,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_ENDURANCE)) {ActionCastSpellAtObject(SPELL_GREATER_ENDURANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_FOXS_CUNNING)) {ActionCastSpellAtObject(SPELL_GREATER_FOXS_CUNNING,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_MAGIC_FANG)) {ActionCastSpellAtObject(SPELL_GREATER_MAGIC_FANG,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_MAGIC_WEAPON)) {ActionCastSpellAtObject(SPELL_GREATER_MAGIC_WEAPON,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_OWLS_WISDOM)) {ActionCastSpellAtObject(SPELL_GREATER_OWLS_WISDOM,oTarget); return 1;}
if(GetHasSpell(SPELL_ENDURANCE)) {ActionCastSpellAtObject(SPELL_ENDURANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_INVISIBILITY)) {ActionCastSpellAtObject(SPELL_INVISIBILITY,oTarget); return 1;}
if(GetHasSpell(SPELL_INVISIBILITY_SPHERE)) {ActionCastSpellAtObject(SPELL_INVISIBILITY_SPHERE,oTarget); return 1;}
if(GetHasSpell(SPELL_HASTE)) {ActionCastSpellAtObject(SPELL_HASTE,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_SPELL_MANTLE)) {ActionCastSpellAtObject(SPELL_GREATER_SPELL_MANTLE,oTarget); return 1;}
if(GetHasSpell(SPELL_KEEN_EDGE)) {ActionCastSpellAtObject(SPELL_KEEN_EDGE,oTarget); return 1;}
if(GetHasSpell(SPELL_LESSER_MIND_BLANK)) {ActionCastSpellAtObject(SPELL_LESSER_MIND_BLANK,oTarget); return 1;}
if(GetHasSpell(SPELL_HOLY_SWORD)) {ActionCastSpellAtObject(SPELL_HOLY_SWORD,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_VESTMENT)) {ActionCastSpellAtObject(SPELL_MAGIC_VESTMENT,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_WEAPON)) {ActionCastSpellAtObject(SPELL_MAGIC_WEAPON,oTarget); return 1;}
if(GetHasSpell(SPELL_MASS_CAMOFLAGE)) {ActionCastSpellAtObject(SPELL_MASS_CAMOFLAGE,oTarget); return 1;}
if(GetHasSpell(SPELL_IMPROVED_INVISIBILITY)) {ActionCastSpellAtObject(SPELL_IMPROVED_INVISIBILITY,oTarget); return 1;}
if(GetHasSpell(SPELL_MASS_HASTE)) {ActionCastSpellAtObject(SPELL_MASS_HASTE,oTarget); return 1;}
if(GetHasSpell(SPELL_PROTECTION__FROM_CHAOS)) {ActionCastSpellAtObject(SPELL_PROTECTION__FROM_CHAOS,oTarget); return 1;}
if(GetHasSpell(SPELL_PROTECTION_FROM_ELEMENTS)) {ActionCastSpellAtObject(SPELL_PROTECTION_FROM_ELEMENTS,oTarget); return 1;}
if(GetHasSpell(SPELL_PROTECTION_FROM_EVIL)) {ActionCastSpellAtObject(SPELL_PROTECTION_FROM_EVIL,oTarget); return 1;}
if(GetHasSpell(SPELL_PROTECTION_FROM_GOOD)) {ActionCastSpellAtObject(SPELL_PROTECTION_FROM_GOOD,oTarget); return 1;}
if(GetHasSpell(SPELL_PROTECTION_FROM_LAW)) {ActionCastSpellAtObject(SPELL_PROTECTION_FROM_LAW,oTarget); return 1;}
if(GetHasSpell(SPELL_PROTECTION_FROM_SPELLS)) {ActionCastSpellAtObject(SPELL_PROTECTION_FROM_SPELLS,oTarget); return 1;}
if(GetHasSpell(SPELL_AURA_OF_VITALITY)) {ActionCastSpellAtObject(SPELL_AURA_OF_VITALITY,oTarget); return 1;}
if(GetHasSpell(SPELL_DISPLACEMENT)) {ActionCastSpellAtObject(SPELL_DISPLACEMENT,oTarget); return 1;}

return 0;
}


// restoration type spell
int CastRestorationOnTarget(object oTarget)
{
if(GetIsEnemy(oTarget)) return 0;
if(GetHasSpell(SPELL_LESSER_RESTORATION)) {ActionCastSpellAtObject(SPELL_LESSER_RESTORATION,oTarget); return 1;}
return 0;
}


// some of these can buff/modify objects other than self, but for now it's contained to object-self.
int CastSelfBuff()
{
object oTarget = OBJECT_SELF;

if(GetHasSpell(SPELL_BLESS)) {ActionCastSpellAtObject(SPELL_BLESS,oTarget); return 1;}
if(GetHasSpell(SPELL_AID)) {ActionCastSpellAtObject(SPELL_AID,oTarget); return 1;}
if(GetHasSpell(SPELL_PRAYER)) {ActionCastSpellAtObject(SPELL_PRAYER,oTarget); return 1;}
if(GetHasSpell(SPELL_BLESS_WEAPON)) {ActionCastSpellAtObject(SPELL_BLESS_WEAPON,oTarget); return 1;}
if(GetHasSpell(SPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE)) {ActionCastSpellAtObject(SPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_CLARITY)) {ActionCastSpellAtObject(SPELL_CLARITY,oTarget); return 1;}
if(GetHasSpell(SPELL_FLAME_WEAPON)) {ActionCastSpellAtObject(SPELL_FLAME_WEAPON,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_STONESKIN)) {ActionCastSpellAtObject(SPELL_GREATER_STONESKIN,oTarget); return 1;}
if(GetHasSpell(SPELL_DARKFIRE)) {ActionCastSpellAtObject(SPELL_DARKFIRE,oTarget); return 1;}
if(GetHasSpell(SPELL_DEATH_WARD)) {ActionCastSpellAtObject(SPELL_DEATH_WARD,oTarget); return 1;}
if(GetHasSpell(SPELL_POLYMORPH_SELF)) {ActionCastSpellAtObject(SPELL_POLYMORPH_SELF,oTarget); return 1;}
if(GetHasSpell(SPELL_DIVINE_FAVOR)) {ActionCastSpellAtObject(SPELL_DIVINE_FAVOR,oTarget); return 1;}
if(GetHasSpell(SPELL_DIVINE_MIGHT)) {ActionCastSpellAtObject(SPELL_DIVINE_MIGHT,oTarget); return 1;}
if(GetHasSpell(SPELL_DIVINE_POWER)) {ActionCastSpellAtObject(SPELL_DIVINE_POWER,oTarget); return 1;}
if(GetHasSpell(SPELL_DIVINE_SHIELD)) {ActionCastSpellAtObject(SPELL_DIVINE_SHIELD,oTarget); return 1;}
if(GetHasSpell(SPELL_AURAOFGLORY)) {ActionCastSpellAtObject(SPELL_AURAOFGLORY,oTarget); return 1;}
if(GetHasSpell(SPELL_ENDURE_ELEMENTS)) {ActionCastSpellAtObject(SPELL_ENDURE_ELEMENTS,oTarget); return 1;}
if(GetHasSpell(SPELL_ENERGY_BUFFER)) {ActionCastSpellAtObject(SPELL_ENERGY_BUFFER,oTarget); return 1;}
if(GetHasSpell(SPELL_ENTROPIC_SHIELD)) {ActionCastSpellAtObject(SPELL_ENTROPIC_SHIELD,oTarget); return 1;}
if(GetHasSpell(SPELL_ETHEREAL_VISAGE)) {ActionCastSpellAtObject(SPELL_ETHEREAL_VISAGE,oTarget); return 1;}
if(GetHasSpell(SPELL_ETHEREALNESS)) {ActionCastSpellAtObject(SPELL_ETHEREALNESS,oTarget); return 1;}
if(GetHasSpell(SPELL_DEATH_ARMOR)) {ActionCastSpellAtObject(SPELL_DEATH_ARMOR,oTarget); return 1;}
if(GetHasSpell(SPELL_GHOSTLY_VISAGE)) {ActionCastSpellAtObject(SPELL_GHOSTLY_VISAGE,oTarget); return 1;}
if(GetHasSpell(SPELL_GLOBE_OF_INVULNERABILITY)) {ActionCastSpellAtObject(SPELL_GLOBE_OF_INVULNERABILITY,oTarget); return 1;}
if(GetHasSpell(SPELL_BARKSKIN)) {ActionCastSpellAtObject(SPELL_BARKSKIN,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGE_ARMOR)) {ActionCastSpellAtObject(SPELL_MAGE_ARMOR,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_CIRCLE_AGAINST_CHAOS)) {ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_CHAOS,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_CIRCLE_AGAINST_EVIL)) {ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_EVIL,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_CIRCLE_AGAINST_GOOD)) {ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_GOOD,oTarget); return 1;}
if(GetHasSpell(SPELL_MAGIC_CIRCLE_AGAINST_LAW)) {ActionCastSpellAtObject(SPELL_MAGIC_CIRCLE_AGAINST_LAW,oTarget); return 1;}
if(GetHasSpell(SPELL_HOLY_AURA)) {ActionCastSpellAtObject(SPELL_HOLY_AURA,oTarget); return 1;}
if(GetHasSpell(SPELL_IRONGUTS)) {ActionCastSpellAtObject(SPELL_IRONGUTS,oTarget); return 1;}
return 0;
}



int CastHealingOnTarget(object oTarget)
{
if(GetIsEnemy(oTarget)) return 0;
if(GetHasSpell(SPELL_CURE_CRITICAL_WOUNDS)) {ActionCastSpellAtObject(SPELL_CURE_CRITICAL_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_CURE_LIGHT_WOUNDS)) {ActionCastSpellAtObject(SPELL_CURE_LIGHT_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_CURE_MINOR_WOUNDS)) {ActionCastSpellAtObject(SPELL_CURE_MINOR_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_CURE_MODERATE_WOUNDS)) {ActionCastSpellAtObject(SPELL_CURE_MODERATE_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_CURE_SERIOUS_WOUNDS)) {ActionCastSpellAtObject(SPELL_CURE_SERIOUS_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_INVISIBILITY_PURGE)) {ActionCastSpellAtObject(SPELL_INVISIBILITY_PURGE,oTarget); return 1;}
if(GetHasSpell(SPELL_HEAL)) {ActionCastSpellAtObject(SPELL_HEAL,oTarget); return 1;}
if(GetHasSpell(SPELL_HEALING_CIRCLE)) {ActionCastSpellAtObject(SPELL_HEALING_CIRCLE,oTarget); return 1;}
if(GetHasSpell(SPELL_MASS_HEAL)) {ActionCastSpellAtObject(SPELL_MASS_HEAL,oTarget); return 1;}
if(GetHasSpell(SPELL_MESTILS_ACID_SHEATH)) {ActionCastSpellAtObject(SPELL_MESTILS_ACID_SHEATH,oTarget); return 1;}

return 0;
}


int CastDebuffAtTarget(object oTarget)
{
if(GetHasSpell(SPELL_BANE)) {ActionCastSpellAtObject(SPELL_BANE,oTarget); return 1;}
if(GetHasSpell(SPELL_BESTOW_CURSE)) {ActionCastSpellAtObject(SPELL_BESTOW_CURSE,oTarget); return 1;}
if(GetHasSpell(SPELL_DOOM)) {ActionCastSpellAtObject(SPELL_DOOM,oTarget); return 1;}
if(GetHasSpell(SPELL_CONTAGION)) {ActionCastSpellAtObject(SPELL_CONTAGION,oTarget); return 1;}
if(GetHasSpell(SPELL_GHOUL_TOUCH)) {ActionCastSpellAtObject(SPELL_GHOUL_TOUCH,oTarget); return 1;}
if(GetHasSpell(SPELL_POISON)) {ActionCastSpellAtObject(SPELL_POISON,oTarget); return 1;}
if(GetHasSpell(SPELL_CIRCLE_OF_DOOM)) {ActionCastSpellAtObject(SPELL_CIRCLE_OF_DOOM,oTarget); return 1;}

return 0;
}

int CastSpellAtLocation(location loc)
{
if(GetHasSpell(SPELL_ANIMATE_DEAD)) {ActionCastSpellAtLocation(SPELL_ANIMATE_DEAD,loc); return 1;}
if(GetHasSpell(SPELL_CLOUD_OF_BEWILDERMENT)) {ActionCastSpellAtLocation(SPELL_CLOUD_OF_BEWILDERMENT,loc); return 1;}
if(GetHasSpell(SPELL_ACID_FOG)) {ActionCastSpellAtLocation(SPELL_ACID_FOG,loc); return 1;}
if(GetHasSpell(SPELL_CLOUDKILL)) {ActionCastSpellAtLocation(SPELL_CLOUDKILL,loc); return 1;}
if(GetHasSpell(SPELL_CREATE_GREATER_UNDEAD)) {ActionCastSpellAtLocation(SPELL_CREATE_GREATER_UNDEAD,loc); return 1;}
if(GetHasSpell(SPELL_CREATE_UNDEAD)) {ActionCastSpellAtLocation(SPELL_CREATE_UNDEAD,loc); return 1;}

return 0;
}

int CastDispelMagicAtTarget(object oTarget)
{
if(GetHasSpell(SPELL_DISPEL_MAGIC)) {ActionCastSpellAtObject(SPELL_DISPEL_MAGIC,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_SPELL_BREACH)) {ActionCastSpellAtObject(SPELL_GREATER_SPELL_BREACH,oTarget); return 1;}
if(GetHasSpell(SPELL_LESSER_DISPEL)) {ActionCastSpellAtObject(SPELL_LESSER_DISPEL,oTarget); return 1;}
if(GetHasSpell(SPELL_LESSER_SPELL_BREACH)) {ActionCastSpellAtObject(SPELL_LESSER_SPELL_BREACH,oTarget); return 1;}
if(GetHasSpell(SPELL_LESSER_SPELL_MANTLE)) {ActionCastSpellAtObject(SPELL_LESSER_SPELL_MANTLE,oTarget); return 1;}
if(GetHasSpell(SPELL_MORDENKAINENS_DISJUNCTION)) {ActionCastSpellAtObject(SPELL_MORDENKAINENS_DISJUNCTION,oTarget); return 1;}

return 1;
}

int CastSummonSpell(object oTarget)
{
if(GetHasSpell(SPELL_SUMMON_CREATURE_I)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_I,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_II)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_II,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_III)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_III,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_IV)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_IV,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_V)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_V,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_VI)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VI,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_VII)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VII,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_VIII)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_VIII,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_CREATURE_IX)) {ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_IX,oTarget); return 1;}
if(GetHasSpell(SPELL_GATE)) {ActionCastSpellAtObject(SPELL_GATE,oTarget); return 1;}
return 0;
}

// spells that effect psychology and/or impair the target
int CastPsychSpellAtTarget(object oTarget)
{
if(GetHasSpell(SPELL_CHARM_MONSTER)) {ActionCastSpellAtObject(SPELL_CHARM_MONSTER,oTarget); return 1;}
if(GetHasSpell(SPELL_CHARM_PERSON)) {ActionCastSpellAtObject(SPELL_CHARM_PERSON,oTarget); return 1;}
if(GetHasSpell(SPELL_CHARM_PERSON_OR_ANIMAL)) {ActionCastSpellAtObject(SPELL_CHARM_PERSON_OR_ANIMAL,oTarget); return 1;}
if(GetHasSpell(SPELL_CONFUSION)) {ActionCastSpellAtObject(SPELL_CONFUSION,oTarget); return 1;}
if(GetHasSpell(SPELL_DAZE)) {ActionCastSpellAtObject(SPELL_DAZE,oTarget); return 1;}
if(GetHasSpell(SPELL_DOMINATE_ANIMAL)) {ActionCastSpellAtObject(SPELL_DOMINATE_ANIMAL,oTarget); return 1;}
if(GetHasSpell(SPELL_DOMINATE_MONSTER)) {ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,oTarget); return 1;}
if(GetHasSpell(SPELL_DOMINATE_PERSON)) {ActionCastSpellAtObject(SPELL_DOMINATE_PERSON,oTarget); return 1;}
if(GetHasSpell(SPELL_FEAR)) {ActionCastSpellAtObject(SPELL_FEAR,oTarget); return 1;}
if(GetHasSpell(SPELL_FEEBLEMIND)) {ActionCastSpellAtObject(SPELL_FEEBLEMIND,oTarget); return 1;}
if(GetHasSpell(SPELL_HOLD_ANIMAL)) {ActionCastSpellAtObject(SPELL_HOLD_ANIMAL,oTarget); return 1;}
if(GetHasSpell(SPELL_HOLD_MONSTER)) {ActionCastSpellAtObject(SPELL_HOLD_MONSTER,oTarget); return 1;}
if(GetHasSpell(SPELL_HOLD_PERSON)) {ActionCastSpellAtObject(SPELL_HOLD_PERSON,oTarget); return 1;}
if(GetHasSpell(SPELL_MASS_BLINDNESS_AND_DEAFNESS)) {ActionCastSpellAtObject(SPELL_MASS_BLINDNESS_AND_DEAFNESS,oTarget); return 1;}
if(GetHasSpell(SPELL_MASS_CHARM)) {ActionCastSpellAtObject(SPELL_MASS_CHARM,oTarget); return 1;}
if(GetHasSpell(SPELL_ENTANGLE)) {ActionCastSpellAtObject(SPELL_ENTANGLE,oTarget); return 1;}
if(GetHasSpell(SPELL_COLOR_SPRAY)) {ActionCastSpellAtObject(SPELL_COLOR_SPRAY,oTarget); return 1;}

return 0;
}

int CastSpellAtTarget(object oTarget)
{

if(GetHasSpell(SPELL_ACID_SPLASH)) {ActionCastSpellAtObject(SPELL_ACID_SPLASH,oTarget); return 1;}
if(GetHasSpell(SPELL_BALAGARNSIRONHORN)) {ActionCastSpellAtObject(SPELL_BALAGARNSIRONHORN,oTarget); return 1;}
if(GetHasSpell(SPELL_BALL_LIGHTNING)) {ActionCastSpellAtObject(SPELL_BALL_LIGHTNING,oTarget); return 1;}
if(GetHasSpell(SPELL_BANISHMENT)) {ActionCastSpellAtObject(SPELL_BANISHMENT,oTarget); return 1;}

if(GetHasSpell(SPELL_BIGBYS_CLENCHED_FIST)) {ActionCastSpellAtObject(SPELL_BIGBYS_CLENCHED_FIST,oTarget); return 1;}
if(GetHasSpell(SPELL_BIGBYS_CRUSHING_HAND)) {ActionCastSpellAtObject(SPELL_BIGBYS_CRUSHING_HAND,oTarget); return 1;}
if(GetHasSpell(SPELL_BIGBYS_FORCEFUL_HAND)) {ActionCastSpellAtObject(SPELL_BIGBYS_FORCEFUL_HAND,oTarget); return 1;}
if(GetHasSpell(SPELL_BIGBYS_GRASPING_HAND)) {ActionCastSpellAtObject(SPELL_BIGBYS_GRASPING_HAND,oTarget); return 1;}
if(GetHasSpell(SPELL_BIGBYS_INTERPOSING_HAND)) {ActionCastSpellAtObject(SPELL_BIGBYS_INTERPOSING_HAND,oTarget); return 1;}


if(GetHasSpell(SPELL_BLADE_BARRIER)) {ActionCastSpellAtObject(SPELL_BLADE_BARRIER,oTarget); return 1;}
if(GetHasSpell(SPELL_BLINDNESS_AND_DEAFNESS)) {ActionCastSpellAtObject(SPELL_BLINDNESS_AND_DEAFNESS,oTarget); return 1;}
if(GetHasSpell(SPELL_BOMBARDMENT)) {ActionCastSpellAtObject(SPELL_BOMBARDMENT,oTarget); return 1;}
if(GetHasSpell(SPELL_BURNING_HANDS)) {ActionCastSpellAtObject(SPELL_BURNING_HANDS,oTarget); return 1;}
if(GetHasSpell(SPELL_CALL_LIGHTNING)) {ActionCastSpellAtObject(SPELL_CALL_LIGHTNING,oTarget); return 1;}
if(GetHasSpell(SPELL_CHAIN_LIGHTNING)) {ActionCastSpellAtObject(SPELL_CHAIN_LIGHTNING,oTarget); return 1;}
if(GetHasSpell(SPELL_CIRCLE_OF_DEATH)) {ActionCastSpellAtObject(SPELL_CIRCLE_OF_DEATH,oTarget); return 1;}


if(GetHasSpell(SPELL_COMBUST)) {ActionCastSpellAtObject(SPELL_COMBUST,oTarget); return 1;}
if(GetHasSpell(SPELL_CONE_OF_COLD)) {ActionCastSpellAtObject(SPELL_CONE_OF_COLD,oTarget); return 1;}

if(GetHasSpell(SPELL_CREEPING_DOOM)) {ActionCastSpellAtObject(SPELL_CREEPING_DOOM,oTarget); return 1;}
if(GetHasSpell(SPELL_CRUMBLE)) {ActionCastSpellAtObject(SPELL_CRUMBLE,oTarget); return 1;}
if(GetHasSpell(SPELL_DARKNESS)) {ActionCastSpellAtObject(SPELL_DARKNESS,oTarget); return 1;}
if(GetHasSpell(SPELL_DEAFENING_CLANG)) {ActionCastSpellAtObject(SPELL_DEAFENING_CLANG,oTarget); return 1;}
if(GetHasSpell(SPELL_DELAYED_BLAST_FIREBALL)) {ActionCastSpellAtObject(SPELL_DELAYED_BLAST_FIREBALL,oTarget); return 1;}
if(GetHasSpell(SPELL_DESTRUCTION)) {ActionCastSpellAtObject(SPELL_DESTRUCTION,oTarget); return 1;}
if(GetHasSpell(SPELL_DIRGE)) {ActionCastSpellAtObject(SPELL_DIRGE,oTarget); return 1;}
if(GetHasSpell(SPELL_DISMISSAL)) {ActionCastSpellAtObject(SPELL_DISMISSAL,oTarget); return 1;}

if(GetHasSpell(SPELL_DROWN)) {ActionCastSpellAtObject(SPELL_DROWN,oTarget); return 1;}
if(GetHasSpell(SPELL_EARTHQUAKE)) {ActionCastSpellAtObject(SPELL_EARTHQUAKE,oTarget); return 1;}
if(GetHasSpell(SPELL_ELECTRIC_JOLT)) {ActionCastSpellAtObject(SPELL_ELECTRIC_JOLT,oTarget); return 1;}
if(GetHasSpell(SPELL_ELEMENTAL_SWARM)) {ActionCastSpellAtObject(SPELL_ELEMENTAL_SWARM,oTarget); return 1;}
if(GetHasSpell(SPELL_ENERGY_DRAIN)) {ActionCastSpellAtObject(SPELL_ENERGY_DRAIN,oTarget); return 1;}
if(GetHasSpell(SPELL_ENERVATION)) {ActionCastSpellAtObject(SPELL_ENERVATION,oTarget); return 1;}

if(GetHasSpell(SPELL_EVARDS_BLACK_TENTACLES)) {ActionCastSpellAtObject(SPELL_EVARDS_BLACK_TENTACLES,oTarget); return 1;}

if(GetHasSpell(SPELL_FINGER_OF_DEATH)) {ActionCastSpellAtObject(SPELL_FINGER_OF_DEATH,oTarget); return 1;}
if(GetHasSpell(SPELL_FIRE_STORM)) {ActionCastSpellAtObject(SPELL_FIRE_STORM,oTarget); return 1;}
if(GetHasSpell(SPELL_FIREBALL)) {ActionCastSpellAtObject(SPELL_FIREBALL,oTarget); return 1;}
if(GetHasSpell(SPELL_FIREBRAND)) {ActionCastSpellAtObject(SPELL_FIREBRAND,oTarget); return 1;}
if(GetHasSpell(SPELL_FLAME_ARROW)) {ActionCastSpellAtObject(SPELL_FLAME_ARROW,oTarget); return 1;}
if(GetHasSpell(SPELL_FLAME_LASH)) {ActionCastSpellAtObject(SPELL_FLAME_LASH,oTarget); return 1;}
if(GetHasSpell(SPELL_FLAME_STRIKE)) {ActionCastSpellAtObject(SPELL_FLAME_STRIKE,oTarget); return 1;}
if(GetHasSpell(SPELL_FLARE)) {ActionCastSpellAtObject(SPELL_FLARE,oTarget); return 1;}
if(GetHasSpell(SPELL_FLESH_TO_STONE)) {ActionCastSpellAtObject(SPELL_FLESH_TO_STONE,oTarget); return 1;}
if(GetHasSpell(SPELL_FLYING_DEBRIS)) {ActionCastSpellAtObject(SPELL_FLYING_DEBRIS,oTarget); return 1;}
if(GetHasSpell(SPELL_FREEDOM_OF_MOVEMENT)) {ActionCastSpellAtObject(SPELL_FREEDOM_OF_MOVEMENT,oTarget); return 1;}

if(GetHasSpell(SPELL_GEDLEES_ELECTRIC_LOOP)) {ActionCastSpellAtObject(SPELL_GEDLEES_ELECTRIC_LOOP,oTarget); return 1;}


if(GetHasSpell(SPELL_GREASE)) {ActionCastSpellAtObject(SPELL_GREASE,oTarget); return 1;}
if(GetHasSpell(SPELL_GREAT_THUNDERCLAP)) {ActionCastSpellAtObject(SPELL_GREAT_THUNDERCLAP,oTarget); return 1;}

if(GetHasSpell(SPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW)) {ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE)) {ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE)) {ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW)) {ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW,oTarget); return 1;}
if(GetHasSpell(SPELL_GREATER_SHADOW_CONJURATION_WEB)) {ActionCastSpellAtObject(SPELL_GREATER_SHADOW_CONJURATION_WEB,oTarget); return 1;}

if(GetHasSpell(SPELL_HAMMER_OF_THE_GODS)) {ActionCastSpellAtObject(SPELL_HAMMER_OF_THE_GODS,oTarget); return 1;}
if(GetHasSpell(SPELL_HARM)) {ActionCastSpellAtObject(SPELL_HARM,oTarget); return 1;}

if(GetHasSpell(SPELL_HEALING_STING)) {ActionCastSpellAtObject(SPELL_HEALING_STING,oTarget); return 1;}

if(GetHasSpell(SPELL_HORIZIKAULS_BOOM)) {ActionCastSpellAtObject(SPELL_HORIZIKAULS_BOOM,oTarget); return 1;}
if(GetHasSpell(SPELL_HORRID_WILTING)) {ActionCastSpellAtObject(SPELL_HORRID_WILTING,oTarget); return 1;}

if(GetHasSpell(SPELL_ICE_DAGGER)) {ActionCastSpellAtObject(SPELL_ICE_DAGGER,oTarget); return 1;}
if(GetHasSpell(SPELL_ICE_STORM)) {ActionCastSpellAtObject(SPELL_ICE_STORM,oTarget); return 1;}

if(GetHasSpell(SPELL_IMPLOSION)) {ActionCastSpellAtObject(SPELL_IMPLOSION,oTarget); return 1;}

if(GetHasSpell(SPELL_INCENDIARY_CLOUD)) {ActionCastSpellAtObject(SPELL_INCENDIARY_CLOUD,oTarget); return 1;}
if(GetHasSpell(SPELL_INFERNO)) {ActionCastSpellAtObject(SPELL_INFERNO,oTarget); return 1;}
if(GetHasSpell(SPELL_INFESTATION_OF_MAGGOTS)) {ActionCastSpellAtObject(SPELL_INFESTATION_OF_MAGGOTS,oTarget); return 1;}

if(GetHasSpell(SPELL_INFLICT_CRITICAL_WOUNDS)) {ActionCastSpellAtObject(SPELL_INFLICT_CRITICAL_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_INFLICT_LIGHT_WOUNDS)) {ActionCastSpellAtObject(SPELL_INFLICT_LIGHT_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_INFLICT_MINOR_WOUNDS)) {ActionCastSpellAtObject(SPELL_INFLICT_MINOR_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_INFLICT_MODERATE_WOUNDS)) {ActionCastSpellAtObject(SPELL_INFLICT_MODERATE_WOUNDS,oTarget); return 1;}
if(GetHasSpell(SPELL_INFLICT_SERIOUS_WOUNDS)) {ActionCastSpellAtObject(SPELL_INFLICT_SERIOUS_WOUNDS,oTarget); return 1;}

if(GetHasSpell(SPELL_ISAACS_GREATER_MISSILE_STORM)) {ActionCastSpellAtObject(SPELL_ISAACS_GREATER_MISSILE_STORM,oTarget); return 1;}
if(GetHasSpell(SPELL_ISAACS_LESSER_MISSILE_STORM)) {ActionCastSpellAtObject(SPELL_ISAACS_LESSER_MISSILE_STORM,oTarget); return 1;}

if(GetHasSpell(SPELL_LIGHTNING_BOLT)) {ActionCastSpellAtObject(SPELL_LIGHTNING_BOLT,oTarget); return 1;}

if(GetHasSpell(SPELL_MAGIC_MISSILE)) {ActionCastSpellAtObject(SPELL_MAGIC_MISSILE,oTarget); return 1;}
if(GetHasSpell(SPELL_MELFS_ACID_ARROW)) {ActionCastSpellAtObject(SPELL_MELFS_ACID_ARROW,oTarget); return 1;}
if(GetHasSpell(SPELL_MESTILS_ACID_BREATH)) {ActionCastSpellAtObject(SPELL_MESTILS_ACID_BREATH,oTarget); return 1;}

if(GetHasSpell(SPELL_METEOR_SWARM)) {ActionCastSpellAtObject(SPELL_METEOR_SWARM,oTarget); return 1;}


if(GetHasSpell(SPELL_NATURES_BALANCE)) {ActionCastSpellAtObject(SPELL_NATURES_BALANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_NEGATIVE_ENERGY_BURST)) {ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_BURST,oTarget); return 1;}
if(GetHasSpell(SPELL_NEGATIVE_ENERGY_RAY)) {ActionCastSpellAtObject(SPELL_NEGATIVE_ENERGY_RAY,oTarget); return 1;}

if(GetHasSpell(SPELL_PHANTASMAL_KILLER)) {ActionCastSpellAtObject(SPELL_PHANTASMAL_KILLER,oTarget); return 1;}


if(GetHasSpell(SPELL_POWER_WORD_KILL)) {ActionCastSpellAtObject(SPELL_POWER_WORD_KILL,oTarget); return 1;}
if(GetHasSpell(SPELL_POWER_WORD_STUN)) {ActionCastSpellAtObject(SPELL_POWER_WORD_STUN,oTarget); return 1;}
if(GetHasSpell(SPELL_PRISMATIC_SPRAY)) {ActionCastSpellAtObject(SPELL_PRISMATIC_SPRAY,oTarget); return 1;}


if(GetHasSpell(SPELL_RAY_OF_ENFEEBLEMENT)) {ActionCastSpellAtObject(SPELL_RAY_OF_ENFEEBLEMENT,oTarget); return 1;}
if(GetHasSpell(SPELL_RAY_OF_FROST)) {ActionCastSpellAtObject(SPELL_RAY_OF_FROST,oTarget); return 1;}

if(GetHasSpell(SPELL_SCINTILLATING_SPHERE)) {ActionCastSpellAtObject(SPELL_SCINTILLATING_SPHERE,oTarget); return 1;}
if(GetHasSpell(SPELL_SEARING_LIGHT)) {ActionCastSpellAtObject(SPELL_SEARING_LIGHT,oTarget); return 1;}

if(GetHasSpell(SPELL_SHADES_CONE_OF_COLD)) {ActionCastSpellAtObject(SPELL_SHADES_CONE_OF_COLD,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADES_FIREBALL)) {ActionCastSpellAtObject(SPELL_SHADES_FIREBALL,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADES_STONESKIN)) {ActionCastSpellAtObject(SPELL_SHADES_STONESKIN,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADES_SUMMON_SHADOW)) {ActionCastSpellAtObject(SPELL_SHADES_SUMMON_SHADOW,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADES_WALL_OF_FIRE)) {ActionCastSpellAtObject(SPELL_SHADES_WALL_OF_FIRE,oTarget); return 1;}

if(GetHasSpell(SPELL_SHADOW_CONJURATION_DARKNESS)) {ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_DARKNESS,oTarget); return 1;}

if(GetHasSpell(SPELL_SHADOW_CONJURATION_MAGIC_MISSILE)) {ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_MAGIC_MISSILE,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADOW_CONJURATION_SUMMON_SHADOW)) {ActionCastSpellAtObject(SPELL_SHADOW_CONJURATION_SUMMON_SHADOW,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADOW_DAZE)) {ActionCastSpellAtObject(SPELL_SHADOW_DAZE,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADOW_EVADE)) {ActionCastSpellAtObject(SPELL_SHADOW_EVADE,oTarget); return 1;}
if(GetHasSpell(SPELL_SHADOW_SHIELD)) {ActionCastSpellAtObject(SPELL_SHADOW_SHIELD,oTarget); return 1;}

if(GetHasSpell(SPELL_SHELGARNS_PERSISTENT_BLADE)) {ActionCastSpellAtObject(SPELL_SHELGARNS_PERSISTENT_BLADE,oTarget); return 1;}

if(GetHasSpell(SPELL_SLAY_LIVING)) {ActionCastSpellAtObject(SPELL_SLAY_LIVING,oTarget); return 1;}

if(GetHasSpell(SPELL_SOUND_BURST)) {ActionCastSpellAtObject(SPELL_SOUND_BURST,oTarget); return 1;}

if(GetHasSpell(SPELL_SPHERE_OF_CHAOS)) {ActionCastSpellAtObject(SPELL_SPHERE_OF_CHAOS,oTarget); return 1;}
if(GetHasSpell(SPELL_SPIKE_GROWTH)) {ActionCastSpellAtObject(SPELL_SPIKE_GROWTH,oTarget); return 1;}
if(GetHasSpell(SPELL_STINKING_CLOUD)) {ActionCastSpellAtObject(SPELL_STINKING_CLOUD,oTarget); return 1;}

if(GetHasSpell(SPELL_STONEHOLD)) {ActionCastSpellAtObject(SPELL_STONEHOLD,oTarget); return 1;}
if(GetHasSpell(SPELL_STORM_OF_VENGEANCE)) {ActionCastSpellAtObject(SPELL_STORM_OF_VENGEANCE,oTarget); return 1;}
if(GetHasSpell(SPELL_SUMMON_SHADOW)) {ActionCastSpellAtObject(SPELL_SUMMON_SHADOW,oTarget); return 1;}
if(GetHasSpell(SPELL_SUNBEAM)) {ActionCastSpellAtObject(SPELL_SUNBEAM,oTarget); return 1;}
if(GetHasSpell(SPELL_SUNBURST)) {ActionCastSpellAtObject(SPELL_SUNBURST,oTarget); return 1;}
if(GetHasSpell(SPELL_TASHAS_HIDEOUS_LAUGHTER)) {ActionCastSpellAtObject(SPELL_TASHAS_HIDEOUS_LAUGHTER,oTarget); return 1;}


if(GetHasSpell(SPELL_TYMORAS_SMILE)) {ActionCastSpellAtObject(SPELL_TYMORAS_SMILE,oTarget); return 1;}

if(GetHasSpell(SPELL_UNDEATH_TO_DEATH)) {ActionCastSpellAtObject(SPELL_UNDEATH_TO_DEATH,oTarget); return 1;}
if(GetHasSpell(SPELL_UNDEATHS_ETERNAL_FOE)) {ActionCastSpellAtObject(SPELL_UNDEATHS_ETERNAL_FOE,oTarget); return 1;}

if(GetHasSpell(SPELL_VAMPIRIC_TOUCH)) {ActionCastSpellAtObject(SPELL_VAMPIRIC_TOUCH,oTarget); return 1;}
if(GetHasSpell(SPELL_VINE_MINE)) {ActionCastSpellAtObject(SPELL_VINE_MINE,oTarget); return 1;}
if(GetHasSpell(SPELL_VINE_MINE_CAMOUFLAGE)) {ActionCastSpellAtObject(SPELL_VINE_MINE_CAMOUFLAGE,oTarget); return 1;}
if(GetHasSpell(SPELL_VINE_MINE_ENTANGLE)) {ActionCastSpellAtObject(SPELL_VINE_MINE_ENTANGLE,oTarget); return 1;}
if(GetHasSpell(SPELL_VINE_MINE_HAMPER_MOVEMENT)) {ActionCastSpellAtObject(SPELL_VINE_MINE_HAMPER_MOVEMENT,oTarget); return 1;}

if(GetHasSpell(SPELL_WAIL_OF_THE_BANSHEE)) {ActionCastSpellAtObject(SPELL_WAIL_OF_THE_BANSHEE,oTarget); return 1;}
if(GetHasSpell(SPELL_WALL_OF_FIRE)) {ActionCastSpellAtObject(SPELL_WALL_OF_FIRE,oTarget); return 1;}
if(GetHasSpell(SPELL_WAR_CRY)) {ActionCastSpellAtObject(SPELL_WAR_CRY,oTarget); return 1;}

if(GetHasSpell(SPELL_WEIRD)) {ActionCastSpellAtObject(SPELL_WEIRD,oTarget); return 1;}
if(GetHasSpell(SPELL_WOUNDING_WHISPERS)) {ActionCastSpellAtObject(SPELL_WOUNDING_WHISPERS,oTarget); return 1;}
return 0;
}

int FighterThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsFighter(oC))
           {
                __TurnCombatRoundOn(TRUE);
                ClearAllActions(TRUE);
                DetermineCombatRound(oC);
                __TurnCombatRoundOn(FALSE);
                return 1;
            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}



int MageThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsMagicUser(oC) )
           {
                __TurnCombatRoundOn(TRUE);
                ClearAllActions(TRUE);
                DetermineCombatRound(oC);
                __TurnCombatRoundOn(FALSE);
                return 1;
           }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}

void Think()
{
    if(FighterThreat())
    {
        return;
    }
    if(MageThreat())
    {
        return;
    }
    object oTarget = FindNearestEnemy(OBJECT_SELF);
    if(GetDistanceToObject(oTarget) > 6.0){
        __TurnCombatRoundOn(TRUE);
        ClearAllActions(TRUE);
        DetermineCombatRound(oTarget);
        __TurnCombatRoundOn(FALSE);

    }

}


void main()
{
    //Think();
}
