
void TemplateAbility(object oSkin)
{
switch(Random(174))
{
case 10: SetLocalInt(OBJECT_SELF,"bAURA_BLINDING",d6()); break;
case 11: SetLocalInt(OBJECT_SELF,"bAURA_COLD",d6()); break;
case 12: SetLocalInt(OBJECT_SELF,"bAURA_ELECTRICITY",d6()); break;
case 13: SetLocalInt(OBJECT_SELF,"bAURA_FEAR",d6()); break;
case 14: SetLocalInt(OBJECT_SELF,"bAURA_FIRE",d6()); break;
case 15: SetLocalInt(OBJECT_SELF,"bAURA_HORRIFICAPPEARANCE",d6()); break;
case 16: SetLocalInt(OBJECT_SELF,"bAURA_MENACE",d6()); break;
case 17: SetLocalInt(OBJECT_SELF,"bAURA_OF_COURAGE",d6()); break;
case 18: SetLocalInt(OBJECT_SELF,"bAURA_PROTECTION",d6()); break;
case 19: SetLocalInt(OBJECT_SELF,"bAURA_STUN",d6()); break;
case 20: SetLocalInt(OBJECT_SELF,"bAURA_UNEARTHLY_VISAGE",d6()); break;
case 21: SetLocalInt(OBJECT_SELF,"bAURA_UNNATURAL",d6()); break;

/*
// Not sure yet
case 22: SetLocalInt(OBJECT_SELF,"bBARBARIAN_RAGE",d6()); break;
case 23: SetLocalInt(OBJECT_SELF,"bBATTLE_MASTERY",d6()); break;
*/

case 30: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CHARISMA",d6()); break;
case 31: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CONSTITUTION",d6()); break;
case 32: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_DEXTERITY",d6()); break;
case 33: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_INTELLIGENCE",d6()); break;
case 34: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_STRENGTH",d6()); break;
case 35: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_WISDOM",d6()); break;
case 36: SetLocalInt(OBJECT_SELF,"bBOLT_ACID",d6()); break;
case 37: SetLocalInt(OBJECT_SELF,"bBOLT_CHARM",d6()); break;
case 38: SetLocalInt(OBJECT_SELF,"bBOLT_COLD",d6()); break;
case 39: SetLocalInt(OBJECT_SELF,"bBOLT_CONFUSE",d6()); break;
case 40: SetLocalInt(OBJECT_SELF,"bBOLT_DAZE",d6()); break;
case 41: SetLocalInt(OBJECT_SELF,"bBOLT_DEATH",d6()); break;
case 42: SetLocalInt(OBJECT_SELF,"bBOLT_DISEASE",d6()); break;
case 43: SetLocalInt(OBJECT_SELF,"bBOLT_DOMINATE",d6()); break;
case 44: SetLocalInt(OBJECT_SELF,"bBOLT_FIRE",d6()); break;
case 45: SetLocalInt(OBJECT_SELF,"bBOLT_KNOCKDOWN",d6()); break;
case 46: SetLocalInt(OBJECT_SELF,"bBOLT_LEVEL_DRAIN",d6()); break;
case 47: SetLocalInt(OBJECT_SELF,"bBOLT_LIGHTNING",d6()); break;
case 48: SetLocalInt(OBJECT_SELF,"bBOLT_PARALYZE",d6()); break;
case 49: SetLocalInt(OBJECT_SELF,"bBOLT_POISON",d6()); break;
case 50: SetLocalInt(OBJECT_SELF,"bBOLT_SHARDS",d6()); break;
case 51: SetLocalInt(OBJECT_SELF,"bBOLT_SLOW",d6()); break;
case 52: SetLocalInt(OBJECT_SELF,"bBOLT_STUN",d6()); break;
case 53: SetLocalInt(OBJECT_SELF,"bBOLT_WEB",d6()); break;
case 54: SetLocalInt(OBJECT_SELF,"bBREATH_PETRIFY",d6()); break;
case 55: SetLocalInt(OBJECT_SELF,"bCHARMMONSTER",d6()); break;
case 56: SetLocalInt(OBJECT_SELF,"bCOMMAND_THE_HORDE",d6()); break;
case 57: SetLocalInt(OBJECT_SELF,"bCONE_ACID",d6()); break;
case 58: SetLocalInt(OBJECT_SELF,"bCONE_COLD",d6()); break;
case 59: SetLocalInt(OBJECT_SELF,"bCONE_DISEASE",d6()); break;
case 60: SetLocalInt(OBJECT_SELF,"bCONE_FIRE",d6()); break;
case 61: SetLocalInt(OBJECT_SELF,"bCONE_LIGHTNING",d6()); break;
case 62: SetLocalInt(OBJECT_SELF,"bCONE_POISON",d6()); break;
case 63: SetLocalInt(OBJECT_SELF,"bCONE_SONIC",d6()); break;

// ???
/*
case 64: SetLocalInt(OBJECT_SELF,"bDC_DIVINE_WRATH",d6()); break;
case 65: SetLocalInt(OBJECT_SELF,"bDETECT_EVIL",d6()); break;
case 66: SetLocalInt(OBJECT_SELF,"bDIVINE_PROTECTION",d6()); break;
case 67: SetLocalInt(OBJECT_SELF,"bDIVINE_STRENGTH",d6()); break;
case 68: SetLocalInt(OBJECT_SELF,"bDIVINE_TRICKERY",d6()); break;
*/

case 69: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_ACID",d6()); break;
case 70: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_COLD",d6()); break;
case 71: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_FEAR",d6()); break;
case 72: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_FIRE",d6()); break;
case 73: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_GAS",d6()); break;
case 74: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_LIGHTNING",d6()); break;
case 75: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_NEGATIVE",d6()); break;
case 76: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_PARALYZE",d6()); break;
case 77: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_SLEEP",d6()); break;
case 78: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_SLOW",d6()); break;
case 79: SetLocalInt(OBJECT_SELF,"bDRAGON_BREATH_WEAKEN",d6()); break;
case 80: SetLocalInt(OBJECT_SELF,"bDRAGON_FEAR",d6()); break;
case 81: SetLocalInt(OBJECT_SELF,"bDRAGON_WING_BUFFET",d6()); break;
case 83: SetLocalInt(OBJECT_SELF,"bELEMENTAL_SHAPE",d6()); break;
case 93: SetLocalInt(OBJECT_SELF,"bGAZE_CHARM",d6()); break;
case 94: SetLocalInt(OBJECT_SELF,"bGAZE_CONFUSION",d6()); break;
case 95: SetLocalInt(OBJECT_SELF,"bGAZE_DAZE",d6()); break;
case 96: SetLocalInt(OBJECT_SELF,"bGAZE_DEATH",d6()); break;
case 97: SetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_CHAOS",d6()); break;
case 98: SetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_EVIL",d6()); break;
case 99: SetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_GOOD",d6()); break;
case 100: SetLocalInt(OBJECT_SELF,"bGAZE_DESTROY_LAW",d6()); break;
case 101: SetLocalInt(OBJECT_SELF,"bGAZE_DOMINATE",d6()); break;
case 102: SetLocalInt(OBJECT_SELF,"bGAZE_DOOM",d6()); break;
case 103: SetLocalInt(OBJECT_SELF,"bGAZE_FEAR",d6()); break;
case 104: SetLocalInt(OBJECT_SELF,"bGAZE_PARALYSIS",d6()); break;
case 105: SetLocalInt(OBJECT_SELF,"bGAZE_PETRIFY",d6()); break;
case 106: SetLocalInt(OBJECT_SELF,"bGAZE_STUNNED",d6()); break;
case 107: SetLocalInt(OBJECT_SELF,"bGOLEM_BREATH_GAS",d6()); break;
case 108: SetLocalInt(OBJECT_SELF,"bHELL_HOUND_FIREBREATH",d6()); break;
case 109: SetLocalInt(OBJECT_SELF,"bHOWL_CONFUSE",d6()); break;
case 110: SetLocalInt(OBJECT_SELF,"bHOWL_DAZE",d6()); break;
case 111: SetLocalInt(OBJECT_SELF,"bHOWL_DEATH",d6()); break;
case 112: SetLocalInt(OBJECT_SELF,"bHOWL_DOOM",d6()); break;
case 113: SetLocalInt(OBJECT_SELF,"bHOWL_FEAR",d6()); break;
case 114: SetLocalInt(OBJECT_SELF,"bHOWL_PARALYSIS",d6()); break;
case 115: SetLocalInt(OBJECT_SELF,"bHOWL_SONIC",d6()); break;
case 116: SetLocalInt(OBJECT_SELF,"bHOWL_STUN",d6()); break;
case 120: SetLocalInt(OBJECT_SELF,"bKRENSHAR_SCARE",d6()); break;
/*
case 121: SetLocalInt(OBJECT_SELF,"bLAY_ON_HANDS",d6()); break;
case 122: SetLocalInt(OBJECT_SELF,"bLESSER_BODY_ADJUSTMENT",d6()); break;
*/
case 123: SetLocalInt(OBJECT_SELF,"bMANTICORE_SPIKES",d6()); break;
case 124: SetLocalInt(OBJECT_SELF,"bMEPHIT_SALT_BREATH",d6()); break;
case 125: SetLocalInt(OBJECT_SELF,"bMEPHIT_STEAM_BREATH",d6()); break;
case 126: SetLocalInt(OBJECT_SELF,"bMINDBLAST",d6()); break;
case 127: SetLocalInt(OBJECT_SELF,"bMUMMY_BOLSTER_UNDEAD",d6()); break;
case 128: SetLocalInt(OBJECT_SELF,"bNEGATIVE_PLANE_AVATAR",d6()); break;
case 135: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CHARISMA",d6()); break;
case 136: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CONSTITUTION",d6()); break;
case 137: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_DEXTERITY",d6()); break;
case 138: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_INTELLIGENCE",d6()); break;
case 139: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_STRENGTH",d6()); break;
case 140: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_WISDOM",d6()); break;
case 141: SetLocalInt(OBJECT_SELF,"bPULSE_COLD",d6()); break;
case 142: SetLocalInt(OBJECT_SELF,"bPULSE_DEATH",d6()); break;
case 143: SetLocalInt(OBJECT_SELF,"bPULSE_DISEASE",d6()); break;
case 144: SetLocalInt(OBJECT_SELF,"bPULSE_DROWN",d6()); break;
case 145: SetLocalInt(OBJECT_SELF,"bPULSE_FIRE",d6()); break;
case 146: SetLocalInt(OBJECT_SELF,"bPULSE_HOLY",d6()); break;
case 147: SetLocalInt(OBJECT_SELF,"bPULSE_LEVEL_DRAIN",d6()); break;
case 148: SetLocalInt(OBJECT_SELF,"bPULSE_LIGHTNING",d6()); break;
case 149: SetLocalInt(OBJECT_SELF,"bPULSE_NEGATIVE",d6()); break;
case 150: SetLocalInt(OBJECT_SELF,"bPULSE_POISON",d6()); break;
case 151: SetLocalInt(OBJECT_SELF,"bPULSE_SPORES",d6()); break;
case 152: SetLocalInt(OBJECT_SELF,"bPULSE_WHIRLWIND",d6()); break;
case 158: SetLocalInt(OBJECT_SELF,"bROGUES_CUNNING",d6()); break;
case 159: SetLocalInt(OBJECT_SELF,"bSEAHAG_EVILEYE",d6()); break;
case 160: SetLocalInt(OBJECT_SELF,"bSMITE_EVIL",d6()); break;
case 161: SetLocalInt(OBJECT_SELF,"bSMOKE_CLAW",d6()); break;
case 162: SetLocalInt(OBJECT_SELF,"bSUMMON_ANIMAL_COMPANION",d6()); break;
case 163: SetLocalInt(OBJECT_SELF,"bSUMMON_CELESTIAL",d6()); break;
case 164: SetLocalInt(OBJECT_SELF,"bSUMMON_FAMILIAR",d6()); break;
case 165: SetLocalInt(OBJECT_SELF,"bSUMMON_MEPHIT",d6()); break;
case 166: SetLocalInt(OBJECT_SELF,"bSUMMON_SLAAD",d6()); break;
case 167: SetLocalInt(OBJECT_SELF,"bSUMMON_TANARRI",d6()); break;
case 168: SetLocalInt(OBJECT_SELF,"bTOUCH_PETRIFY",d6()); break;
case 169: SetLocalInt(OBJECT_SELF,"bTROGLODYTE_STENCH",d6()); break;
//case 170: SetLocalInt(OBJECT_SELF,"bTRUMPET_BLAST",d6()); break;
//case 171: SetLocalInt(OBJECT_SELF,"bTURN_UNDEAD",d6()); break;
case 172: SetLocalInt(OBJECT_SELF,"bTYRANT_FOG_MIST",d6()); break;
case 173: SetLocalInt(OBJECT_SELF,"bWHIRLWIND",d6()); break;
case 174: SetLocalInt(OBJECT_SELF,"bWHOLENESS_OF_BODY",d6()); break;
case 175: SetLocalInt(OBJECT_SELF,"bWILD_SHAPE",d6()); break;}
}


void TemplateSpell(object o)
{
switch(Random(366))
{
case 0: SetLocalInt(OBJECT_SELF,"bSPELL_ACID_FOG",d6()); break;
case 1: SetLocalInt(OBJECT_SELF,"bSPELL_ACID_SPLASH",d6()); break;
case 2: SetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_PORTAL",d6()); break;
case 3: SetLocalInt(OBJECT_SELF,"bSPELL_ACTIVATE_ITEM_SELF2",d6()); break;
case 4: SetLocalInt(OBJECT_SELF,"bSPELL_AID",d6()); break;
case 5: SetLocalInt(OBJECT_SELF,"bSPELL_ALL_SPELLS",d6()); break;
case 6: SetLocalInt(OBJECT_SELF,"bSPELL_AMPLIFY",d6()); break;
case 7: SetLocalInt(OBJECT_SELF,"bSPELL_ANIMATE_DEAD",d6()); break;
case 8: SetLocalInt(OBJECT_SELF,"bSPELL_AURA_OF_VITALITY",d6()); break;
case 9: SetLocalInt(OBJECT_SELF,"bSPELL_AURAOFGLORY",d6()); break;
case 10: SetLocalInt(OBJECT_SELF,"bSPELL_AWAKEN",d6()); break;
case 11: SetLocalInt(OBJECT_SELF,"bSPELL_BALAGARNSIRONHORN",d6()); break;
case 12: SetLocalInt(OBJECT_SELF,"bSPELL_BALL_LIGHTNING",d6()); break;
case 13: SetLocalInt(OBJECT_SELF,"bSPELL_BANE",d6()); break;
case 14: SetLocalInt(OBJECT_SELF,"bSPELL_BANISHMENT",d6()); break;
case 15: SetLocalInt(OBJECT_SELF,"bSPELL_BARKSKIN",d6()); break;
case 16: SetLocalInt(OBJECT_SELF,"bSPELL_BATTLETIDE",d6()); break;
case 17: SetLocalInt(OBJECT_SELF,"bSPELL_BESTOW_CURSE",d6()); break;
case 18: SetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CLENCHED_FIST",d6()); break;
case 19: SetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_CRUSHING_HAND",d6()); break;
case 20: SetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_FORCEFUL_HAND",d6()); break;
case 21: SetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_GRASPING_HAND",d6()); break;
case 22: SetLocalInt(OBJECT_SELF,"bSPELL_BIGBYS_INTERPOSING_HAND",d6()); break;
case 23: SetLocalInt(OBJECT_SELF,"bSPELL_BLACK_BLADE_OF_DISASTER",d6()); break;
case 24: SetLocalInt(OBJECT_SELF,"bSPELL_BLACKSTAFF",d6()); break;
case 25: SetLocalInt(OBJECT_SELF,"bSPELL_BLADE_BARRIER",d6()); break;
case 26: SetLocalInt(OBJECT_SELF,"bSPELL_BLADE_THIRST",d6()); break;
case 27: SetLocalInt(OBJECT_SELF,"bSPELL_BLESS",d6()); break;
case 28: SetLocalInt(OBJECT_SELF,"bSPELL_BLESS_WEAPON",d6()); break;
case 29: SetLocalInt(OBJECT_SELF,"bSPELL_BLINDNESS_AND_DEAFNESS",d6()); break;
case 30: SetLocalInt(OBJECT_SELF,"bSPELL_BLOOD_FRENZY",d6()); break;
case 31: SetLocalInt(OBJECT_SELF,"bSPELL_BOMBARDMENT",d6()); break;
case 32: SetLocalInt(OBJECT_SELF,"bSPELL_BULLS_STRENGTH",d6()); break;
case 33: SetLocalInt(OBJECT_SELF,"bSPELL_BURNING_HANDS",d6()); break;
case 34: SetLocalInt(OBJECT_SELF,"bSPELL_CALL_LIGHTNING",d6()); break;
case 35: SetLocalInt(OBJECT_SELF,"bSPELL_CAMOFLAGE",d6()); break;
case 36: SetLocalInt(OBJECT_SELF,"bSPELL_CATS_GRACE",d6()); break;
case 37: SetLocalInt(OBJECT_SELF,"bSPELL_CHAIN_LIGHTNING",d6()); break;
case 38: SetLocalInt(OBJECT_SELF,"bSPELL_CHARGER",d6()); break;
case 39: SetLocalInt(OBJECT_SELF,"bSPELL_CHARM_MONSTER",d6()); break;
case 40: SetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON",d6()); break;
case 41: SetLocalInt(OBJECT_SELF,"bSPELL_CHARM_PERSON_OR_ANIMAL",d6()); break;
case 42: SetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DEATH",d6()); break;
case 43: SetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DOOM",d6()); break;
case 44: SetLocalInt(OBJECT_SELF,"bSPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE",d6()); break;
case 45: SetLocalInt(OBJECT_SELF,"bSPELL_CLARITY",d6()); break;
case 46: SetLocalInt(OBJECT_SELF,"bSPELL_CLOAK_OF_CHAOS",d6()); break;
case 47: SetLocalInt(OBJECT_SELF,"bSPELL_CLOUD_OF_BEWILDERMENT",d6()); break;
case 48: SetLocalInt(OBJECT_SELF,"bSPELL_CLOUDKILL",d6()); break;
case 49: SetLocalInt(OBJECT_SELF,"bSPELL_COLOR_SPRAY",d6()); break;
case 50: SetLocalInt(OBJECT_SELF,"bSPELL_COMBUST",d6()); break;
case 51: SetLocalInt(OBJECT_SELF,"bSPELL_CONE_OF_COLD",d6()); break;
case 52: SetLocalInt(OBJECT_SELF,"bSPELL_CONFUSION",d6()); break;
case 53: SetLocalInt(OBJECT_SELF,"bSPELL_CONTAGION",d6()); break;
case 54: SetLocalInt(OBJECT_SELF,"bSPELL_CONTINUAL_FLAME",d6()); break;
case 55: SetLocalInt(OBJECT_SELF,"bSPELL_CONTROL_UNDEAD",d6()); break;
case 56: SetLocalInt(OBJECT_SELF,"bSPELL_CRAFT_HARPER_ITEM",d6()); break;
case 57: SetLocalInt(OBJECT_SELF,"bSPELL_CREATE_GREATER_UNDEAD",d6()); break;
case 58: SetLocalInt(OBJECT_SELF,"bSPELL_CREATE_UNDEAD",d6()); break;
case 59: SetLocalInt(OBJECT_SELF,"bSPELL_CREEPING_DOOM",d6()); break;
case 60: SetLocalInt(OBJECT_SELF,"bSPELL_CRUMBLE",d6()); break;
case 61: SetLocalInt(OBJECT_SELF,"bSPELL_CURE_CRITICAL_WOUNDS",d6()); break;
case 62: SetLocalInt(OBJECT_SELF,"bSPELL_CURE_LIGHT_WOUNDS",d6()); break;
case 63: SetLocalInt(OBJECT_SELF,"bSPELL_CURE_MINOR_WOUNDS",d6()); break;
case 64: SetLocalInt(OBJECT_SELF,"bSPELL_CURE_MODERATE_WOUNDS",d6()); break;
case 65: SetLocalInt(OBJECT_SELF,"bSPELL_CURE_SERIOUS_WOUNDS",d6()); break;
case 66: SetLocalInt(OBJECT_SELF,"bSPELL_DARKFIRE",d6()); break;
case 67: SetLocalInt(OBJECT_SELF,"bSPELL_DARKNESS",d6()); break;
case 68: SetLocalInt(OBJECT_SELF,"bSPELL_DARKVISION",d6()); break;
case 69: SetLocalInt(OBJECT_SELF,"bSPELL_DAZE",d6()); break;
case 70: SetLocalInt(OBJECT_SELF,"bSPELL_DEAFENING_CLANG",d6()); break;
case 71: SetLocalInt(OBJECT_SELF,"bSPELL_DEATH_ARMOR",d6()); break;
case 72: SetLocalInt(OBJECT_SELF,"bSPELL_DEATH_WARD",d6()); break;
case 73: SetLocalInt(OBJECT_SELF,"bSPELL_DECHARGER",d6()); break;
case 74: SetLocalInt(OBJECT_SELF,"bSPELL_DECK_AVATAR",d6()); break;
case 75: SetLocalInt(OBJECT_SELF,"bSPELL_DECK_BUTTERFLYSPRAY",d6()); break;
case 76: SetLocalInt(OBJECT_SELF,"bSPELL_DECK_GEMSPRAY",d6()); break;
case 77: SetLocalInt(OBJECT_SELF,"bSPELL_DECK_OF_MANY_THINGS",d6()); break;
case 78: SetLocalInt(OBJECT_SELF,"bSPELL_DELAYED_BLAST_FIREBALL",d6()); break;
case 79: SetLocalInt(OBJECT_SELF,"bSPELL_DESTRUCTION",d6()); break;
case 80: SetLocalInt(OBJECT_SELF,"bSPELL_DIRGE",d6()); break;
case 81: SetLocalInt(OBJECT_SELF,"bSPELL_DISMISSAL",d6()); break;
case 82: SetLocalInt(OBJECT_SELF,"bSPELL_DISPEL_MAGIC",d6()); break;
case 83: SetLocalInt(OBJECT_SELF,"bSPELL_DISPLACEMENT",d6()); break;
case 84: SetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_FAVOR",d6()); break;
case 85: SetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_MIGHT",d6()); break;
case 86: SetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_POWER",d6()); break;
case 87: SetLocalInt(OBJECT_SELF,"bSPELL_DIVINE_SHIELD",d6()); break;
case 88: SetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_ANIMAL",d6()); break;
case 89: SetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_MONSTER",d6()); break;
case 90: SetLocalInt(OBJECT_SELF,"bSPELL_DOMINATE_PERSON",d6()); break;
case 91: SetLocalInt(OBJECT_SELF,"bSPELL_DOOM",d6()); break;
case 92: SetLocalInt(OBJECT_SELF,"bSPELL_DROWN",d6()); break;
case 93: SetLocalInt(OBJECT_SELF,"bSPELL_EAGLE_SPLEDOR",d6()); break;
case 94: SetLocalInt(OBJECT_SELF,"bSPELL_EARTHQUAKE",d6()); break;
case 95: SetLocalInt(OBJECT_SELF,"bSPELL_ELECTRIC_JOLT",d6()); break;
case 96: SetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SHIELD",d6()); break;
case 97: SetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SUMMONING_ITEM",d6()); break;
case 98: SetLocalInt(OBJECT_SELF,"bSPELL_ELEMENTAL_SWARM",d6()); break;
case 99: SetLocalInt(OBJECT_SELF,"bSPELL_ENDURANCE",d6()); break;
case 100: SetLocalInt(OBJECT_SELF,"bSPELL_ENDURE_ELEMENTS",d6()); break;
case 101: SetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_BUFFER",d6()); break;
case 102: SetLocalInt(OBJECT_SELF,"bSPELL_ENERGY_DRAIN",d6()); break;
case 103: SetLocalInt(OBJECT_SELF,"bSPELL_ENERVATION",d6()); break;
case 104: SetLocalInt(OBJECT_SELF,"bSPELL_ENTANGLE",d6()); break;
case 105: SetLocalInt(OBJECT_SELF,"bSPELL_ENTROPIC_SHIELD",d6()); break;
case 106: SetLocalInt(OBJECT_SELF,"bSPELL_EPIC_DRAGON_KNIGHT",d6()); break;
case 107: SetLocalInt(OBJECT_SELF,"bSPELL_EPIC_HELLBALL",d6()); break;
case 108: SetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MAGE_ARMOR",d6()); break;
case 109: SetLocalInt(OBJECT_SELF,"bSPELL_EPIC_MUMMY_DUST",d6()); break;
case 110: SetLocalInt(OBJECT_SELF,"bSPELL_EPIC_RUIN",d6()); break;
case 111: SetLocalInt(OBJECT_SELF,"bSPELL_ETHEREAL_VISAGE",d6()); break;
case 112: SetLocalInt(OBJECT_SELF,"bSPELL_ETHEREALNESS",d6()); break;
case 113: SetLocalInt(OBJECT_SELF,"bSPELL_EVARDS_BLACK_TENTACLES",d6()); break;
case 114: SetLocalInt(OBJECT_SELF,"bSPELL_EXPEDITIOUS_RETREAT",d6()); break;
case 115: SetLocalInt(OBJECT_SELF,"bSPELL_FEAR",d6()); break;
case 116: SetLocalInt(OBJECT_SELF,"bSPELL_FEEBLEMIND",d6()); break;
case 117: SetLocalInt(OBJECT_SELF,"bSPELL_FIND_TRAPS",d6()); break;
case 118: SetLocalInt(OBJECT_SELF,"bSPELL_FINGER_OF_DEATH",d6()); break;
case 119: SetLocalInt(OBJECT_SELF,"bSPELL_FIRE_STORM",d6()); break;
case 120: SetLocalInt(OBJECT_SELF,"bSPELL_FIREBALL",d6()); break;
case 121: SetLocalInt(OBJECT_SELF,"bSPELL_FIREBRAND",d6()); break;
case 122: SetLocalInt(OBJECT_SELF,"bSPELL_FLAME_ARROW",d6()); break;
case 123: SetLocalInt(OBJECT_SELF,"bSPELL_FLAME_LASH",d6()); break;
case 124: SetLocalInt(OBJECT_SELF,"bSPELL_FLAME_STRIKE",d6()); break;
case 125: SetLocalInt(OBJECT_SELF,"bSPELL_FLAME_WEAPON",d6()); break;
case 126: SetLocalInt(OBJECT_SELF,"bSPELL_FLARE",d6()); break;
case 127: SetLocalInt(OBJECT_SELF,"bSPELL_FLESH_TO_STONE",d6()); break;
case 128: SetLocalInt(OBJECT_SELF,"bSPELL_FLYING_DEBRIS",d6()); break;
case 129: SetLocalInt(OBJECT_SELF,"bSPELL_FOXS_CUNNING",d6()); break;
case 130: SetLocalInt(OBJECT_SELF,"bSPELL_FREEDOM_OF_MOVEMENT",d6()); break;
case 131: SetLocalInt(OBJECT_SELF,"bSPELL_GATE",d6()); break;
case 132: SetLocalInt(OBJECT_SELF,"bSPELL_GEDLEES_ELECTRIC_LOOP",d6()); break;
case 133: SetLocalInt(OBJECT_SELF,"bSPELL_GHOSTLY_VISAGE",d6()); break;
case 134: SetLocalInt(OBJECT_SELF,"bSPELL_GHOUL_TOUCH",d6()); break;
case 135: SetLocalInt(OBJECT_SELF,"bSPELL_GLOBE_OF_INVULNERABILITY",d6()); break;
case 136: SetLocalInt(OBJECT_SELF,"bSPELL_GLYPH_OF_WARDING",d6()); break;
case 137: SetLocalInt(OBJECT_SELF,"bSPELL_GREASE",d6()); break;
case 138: SetLocalInt(OBJECT_SELF,"bSPELL_GREAT_THUNDERCLAP",d6()); break;
case 139: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_BULLS_STRENGTH",d6()); break;
case 140: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_CATS_GRACE",d6()); break;
case 141: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_DISPELLING",d6()); break;
case 142: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_EAGLE_SPLENDOR",d6()); break;
case 143: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_ENDURANCE",d6()); break;
case 144: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_FOXS_CUNNING",d6()); break;
case 145: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_FANG",d6()); break;
case 146: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_MAGIC_WEAPON",d6()); break;
case 147: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_OWLS_WISDOM",d6()); break;
case 148: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_PLANAR_BINDING",d6()); break;
case 149: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_RESTORATION",d6()); break;
case 150: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_ACID_ARROW",d6()); break;
case 151: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MINOR_GLOBE",d6()); break;
case 152: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_MIRROR_IMAGE",d6()); break;
case 153: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_SUMMON_SHADOW",d6()); break;
case 154: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SHADOW_CONJURATION_WEB",d6()); break;
case 155: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_BREACH",d6()); break;
case 156: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_SPELL_MANTLE",d6()); break;
case 157: SetLocalInt(OBJECT_SELF,"bSPELL_GREATER_STONESKIN",d6()); break;
case 158: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_ACID",d6()); break;
case 159: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CALTROPS",d6()); break;
case 160: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHICKEN",d6()); break;
case 161: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_CHOKING",d6()); break;
case 162: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_FIRE",d6()); break;
case 163: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_HOLY",d6()); break;
case 164: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_TANGLE",d6()); break;
case 165: SetLocalInt(OBJECT_SELF,"bSPELL_GRENADE_THUNDERSTONE",d6()); break;
case 166: SetLocalInt(OBJECT_SELF,"bSPELL_GUST_OF_WIND",d6()); break;
case 167: SetLocalInt(OBJECT_SELF,"bSPELL_HAMMER_OF_THE_GODS",d6()); break;
case 168: SetLocalInt(OBJECT_SELF,"bSPELL_HARM",d6()); break;
case 169: SetLocalInt(OBJECT_SELF,"bSPELL_HASTE",d6()); break;
case 170: SetLocalInt(OBJECT_SELF,"bSPELL_HEAL",d6()); break;
case 171: SetLocalInt(OBJECT_SELF,"bSPELL_HEALING_CIRCLE",d6()); break;
case 172: SetLocalInt(OBJECT_SELF,"bSPELL_HEALING_STING",d6()); break;
case 173: SetLocalInt(OBJECT_SELF,"bSPELL_HEALINGKIT",d6()); break;
case 174: SetLocalInt(OBJECT_SELF,"bSPELL_HOLD_ANIMAL",d6()); break;
case 175: SetLocalInt(OBJECT_SELF,"bSPELL_HOLD_MONSTER",d6()); break;
case 176: SetLocalInt(OBJECT_SELF,"bSPELL_HOLD_PERSON",d6()); break;
case 177: SetLocalInt(OBJECT_SELF,"bSPELL_HOLY_AURA",d6()); break;
case 178: SetLocalInt(OBJECT_SELF,"bSPELL_HOLY_SWORD",d6()); break;
case 179: SetLocalInt(OBJECT_SELF,"bSPELL_HORIZIKAULS_BOOM",d6()); break;
case 180: SetLocalInt(OBJECT_SELF,"bSPELL_HORRID_WILTING",d6()); break;
case 181: SetLocalInt(OBJECT_SELF,"bSPELL_HORSE_ASSIGN_MOUNT",d6()); break;
case 182: SetLocalInt(OBJECT_SELF,"bSPELL_HORSE_DISMOUNT",d6()); break;
case 183: SetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MENU",d6()); break;
case 184: SetLocalInt(OBJECT_SELF,"bSPELL_HORSE_MOUNT",d6()); break;
case 185: SetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_DISMOUNT",d6()); break;
case 186: SetLocalInt(OBJECT_SELF,"bSPELL_HORSE_PARTY_MOUNT",d6()); break;
case 187: SetLocalInt(OBJECT_SELF,"bSPELL_ICE_DAGGER",d6()); break;
case 188: SetLocalInt(OBJECT_SELF,"bSPELL_ICE_STORM",d6()); break;
case 189: SetLocalInt(OBJECT_SELF,"bSPELL_IDENTIFY",d6()); break;
case 190: SetLocalInt(OBJECT_SELF,"bSPELL_IMPLOSION",d6()); break;
case 191: SetLocalInt(OBJECT_SELF,"bSPELL_IMPROVED_INVISIBILITY",d6()); break;
case 192: SetLocalInt(OBJECT_SELF,"bSPELL_INCENDIARY_CLOUD",d6()); break;
case 193: SetLocalInt(OBJECT_SELF,"bSPELL_INFERNO",d6()); break;
case 194: SetLocalInt(OBJECT_SELF,"bSPELL_INFESTATION_OF_MAGGOTS",d6()); break;
case 195: SetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_CRITICAL_WOUNDS",d6()); break;
case 196: SetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_LIGHT_WOUNDS",d6()); break;
case 197: SetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MINOR_WOUNDS",d6()); break;
case 198: SetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_MODERATE_WOUNDS",d6()); break;
case 199: SetLocalInt(OBJECT_SELF,"bSPELL_INFLICT_SERIOUS_WOUNDS",d6()); break;
case 200: SetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY",d6()); break;
case 201: SetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_PURGE",d6()); break;
case 202: SetLocalInt(OBJECT_SELF,"bSPELL_INVISIBILITY_SPHERE",d6()); break;
case 203: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_BLUE",d6()); break;
case 204: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DEEP_RED",d6()); break;
case 205: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_DUSTY_ROSE",d6()); break;
case 206: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PALE_BLUE",d6()); break;
case 207: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK",d6()); break;
case 208: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_PINK_GREEN",d6()); break;
case 209: SetLocalInt(OBJECT_SELF,"bSPELL_IOUN_STONE_SCARLET_BLUE",d6()); break;
case 210: SetLocalInt(OBJECT_SELF,"bSPELL_IRONGUTS",d6()); break;
case 211: SetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_GREATER_MISSILE_STORM",d6()); break;
case 212: SetLocalInt(OBJECT_SELF,"bSPELL_ISAACS_LESSER_MISSILE_STORM",d6()); break;
case 213: SetLocalInt(OBJECT_SELF,"bSPELL_KEEN_EDGE",d6()); break;
case 214: SetLocalInt(OBJECT_SELF,"bSPELL_KNOCK",d6()); break;
case 215: SetLocalInt(OBJECT_SELF,"bSPELL_KOBOLD_JUMP",d6()); break;
case 216: SetLocalInt(OBJECT_SELF,"bSPELL_LEGEND_LORE",d6()); break;
case 217: SetLocalInt(OBJECT_SELF,"bSPELL_LESSER_DISPEL",d6()); break;
case 218: SetLocalInt(OBJECT_SELF,"bSPELL_LESSER_MIND_BLANK",d6()); break;
case 219: SetLocalInt(OBJECT_SELF,"bSPELL_LESSER_PLANAR_BINDING",d6()); break;
case 220: SetLocalInt(OBJECT_SELF,"bSPELL_LESSER_RESTORATION",d6()); break;
case 221: SetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_BREACH",d6()); break;
case 222: SetLocalInt(OBJECT_SELF,"bSPELL_LESSER_SPELL_MANTLE",d6()); break;
case 223: SetLocalInt(OBJECT_SELF,"bSPELL_LIGHT",d6()); break;
case 224: SetLocalInt(OBJECT_SELF,"bSPELL_LIGHTNING_BOLT",d6()); break;
case 225: SetLocalInt(OBJECT_SELF,"bSPELL_MAGE_ARMOR",d6()); break;
case 226: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_CHAOS",d6()); break;
case 227: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_EVIL",d6()); break;
case 228: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_GOOD",d6()); break;
case 229: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_CIRCLE_AGAINST_LAW",d6()); break;
case 230: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_FANG",d6()); break;
case 231: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_MISSILE",d6()); break;
case 232: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_VESTMENT",d6()); break;
case 233: SetLocalInt(OBJECT_SELF,"bSPELL_MAGIC_WEAPON",d6()); break;
case 234: SetLocalInt(OBJECT_SELF,"bSPELL_MASS_BLINDNESS_AND_DEAFNESS",d6()); break;
case 235: SetLocalInt(OBJECT_SELF,"bSPELL_MASS_CAMOFLAGE",d6()); break;
case 236: SetLocalInt(OBJECT_SELF,"bSPELL_MASS_CHARM",d6()); break;
case 237: SetLocalInt(OBJECT_SELF,"bSPELL_MASS_HASTE",d6()); break;
case 238: SetLocalInt(OBJECT_SELF,"bSPELL_MASS_HEAL",d6()); break;
case 239: SetLocalInt(OBJECT_SELF,"bSPELL_MELFS_ACID_ARROW",d6()); break;
case 240: SetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_BREATH",d6()); break;
case 241: SetLocalInt(OBJECT_SELF,"bSPELL_MESTILS_ACID_SHEATH",d6()); break;
case 242: SetLocalInt(OBJECT_SELF,"bSPELL_METEOR_SWARM",d6()); break;
case 243: SetLocalInt(OBJECT_SELF,"bSPELL_MIND_BLANK",d6()); break;
case 244: SetLocalInt(OBJECT_SELF,"bSPELL_MIND_FOG",d6()); break;
case 245: SetLocalInt(OBJECT_SELF,"bSPELL_MINOR_GLOBE_OF_INVULNERABILITY",d6()); break;
case 246: SetLocalInt(OBJECT_SELF,"bSPELL_MONSTROUS_REGENERATION",d6()); break;
case 247: SetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_DISJUNCTION",d6()); break;
case 248: SetLocalInt(OBJECT_SELF,"bSPELL_MORDENKAINENS_SWORD",d6()); break;
case 249: SetLocalInt(OBJECT_SELF,"bSPELL_NATURES_BALANCE",d6()); break;
case 250: SetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_BURST",d6()); break;
case 251: SetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_PROTECTION",d6()); break;
case 252: SetLocalInt(OBJECT_SELF,"bSPELL_NEGATIVE_ENERGY_RAY",d6()); break;
case 253: SetLocalInt(OBJECT_SELF,"bSPELL_NEUTRALIZE_POISON",d6()); break;
case 254: SetLocalInt(OBJECT_SELF,"bSPELL_ONE_WITH_THE_LAND",d6()); break;
case 255: SetLocalInt(OBJECT_SELF,"bSPELL_OWLS_INSIGHT",d6()); break;
case 256: SetLocalInt(OBJECT_SELF,"bSPELL_OWLS_WISDOM",d6()); break;
case 257: SetLocalInt(OBJECT_SELF,"bSPELL_PALADIN_SUMMON_MOUNT",d6()); break;
case 258: SetLocalInt(OBJECT_SELF,"bSPELL_PHANTASMAL_KILLER",d6()); break;
case 259: SetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_ALLY",d6()); break;
case 260: SetLocalInt(OBJECT_SELF,"bSPELL_PLANAR_BINDING",d6()); break;
case 261: SetLocalInt(OBJECT_SELF,"bSPELL_POISON",d6()); break;
case 262: SetLocalInt(OBJECT_SELF,"bSPELL_POLYMORPH_SELF",d6()); break;
case 263: SetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_KILL",d6()); break;
case 264: SetLocalInt(OBJECT_SELF,"bSPELL_POWER_WORD_STUN",d6()); break;
case 265: SetLocalInt(OBJECT_SELF,"bSPELL_POWERSTONE",d6()); break;
case 266: SetLocalInt(OBJECT_SELF,"bSPELL_PRAYER",d6()); break;
case 267: SetLocalInt(OBJECT_SELF,"bSPELL_PREMONITION",d6()); break;
case 268: SetLocalInt(OBJECT_SELF,"bSPELL_PRISMATIC_SPRAY",d6()); break;
case 269: SetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION__FROM_CHAOS",d6()); break;
case 270: SetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_ELEMENTS",d6()); break;
case 271: SetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_EVIL",d6()); break;
case 272: SetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_GOOD",d6()); break;
case 273: SetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_LAW",d6()); break;
case 274: SetLocalInt(OBJECT_SELF,"bSPELL_PROTECTION_FROM_SPELLS",d6()); break;
case 275: SetLocalInt(OBJECT_SELF,"bSPELL_QUILLFIRE",d6()); break;
case 276: SetLocalInt(OBJECT_SELF,"bSPELL_RAISE_DEAD",d6()); break;
case 277: SetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_ENFEEBLEMENT",d6()); break;
case 278: SetLocalInt(OBJECT_SELF,"bSPELL_RAY_OF_FROST",d6()); break;
case 279: SetLocalInt(OBJECT_SELF,"bSPELL_REGENERATE",d6()); break;
case 280: SetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_BLINDNESS_AND_DEAFNESS",d6()); break;
case 281: SetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_CURSE",d6()); break;
case 282: SetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_DISEASE",d6()); break;
case 283: SetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_FEAR",d6()); break;
case 284: SetLocalInt(OBJECT_SELF,"bSPELL_REMOVE_PARALYSIS",d6()); break;
case 285: SetLocalInt(OBJECT_SELF,"bSPELL_RESIST_ELEMENTS",d6()); break;
case 286: SetLocalInt(OBJECT_SELF,"bSPELL_RESISTANCE",d6()); break;
case 287: SetLocalInt(OBJECT_SELF,"bSPELL_RESTORATION",d6()); break;
case 288: SetLocalInt(OBJECT_SELF,"bSPELL_RESURRECTION",d6()); break;
case 289: SetLocalInt(OBJECT_SELF,"bSPELL_ROD_OF_WONDER",d6()); break;
case 290: SetLocalInt(OBJECT_SELF,"bSPELL_SANCTUARY",d6()); break;
case 291: SetLocalInt(OBJECT_SELF,"bSPELL_SCARE",d6()); break;
case 292: SetLocalInt(OBJECT_SELF,"bSPELL_SCINTILLATING_SPHERE",d6()); break;
case 293: SetLocalInt(OBJECT_SELF,"bSPELL_SEARING_LIGHT",d6()); break;
case 294: SetLocalInt(OBJECT_SELF,"bSPELL_SEE_INVISIBILITY",d6()); break;
case 295: SetLocalInt(OBJECT_SELF,"bSPELL_SHADES_CONE_OF_COLD",d6()); break;
case 296: SetLocalInt(OBJECT_SELF,"bSPELL_SHADES_FIREBALL",d6()); break;
case 297: SetLocalInt(OBJECT_SELF,"bSPELL_SHADES_STONESKIN",d6()); break;
case 298: SetLocalInt(OBJECT_SELF,"bSPELL_SHADES_SUMMON_SHADOW",d6()); break;
case 299: SetLocalInt(OBJECT_SELF,"bSPELL_SHADES_WALL_OF_FIRE",d6()); break;
case 300: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_DARKNESS",d6()); break;
case 301: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_INIVSIBILITY",d6()); break;
case 302: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGE_ARMOR",d6()); break;
case 303: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_MAGIC_MISSILE",d6()); break;
case 304: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_CONJURATION_SUMMON_SHADOW",d6()); break;
case 305: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_DAZE",d6()); break;
case 306: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_EVADE",d6()); break;
case 307: SetLocalInt(OBJECT_SELF,"bSPELL_SHADOW_SHIELD",d6()); break;
case 308: SetLocalInt(OBJECT_SELF,"bSPELL_SHAPECHANGE",d6()); break;
case 309: SetLocalInt(OBJECT_SELF,"bSPELL_SHELGARNS_PERSISTENT_BLADE",d6()); break;
case 310: SetLocalInt(OBJECT_SELF,"bSPELL_SHIELD",d6()); break;
case 311: SetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_FAITH",d6()); break;
case 312: SetLocalInt(OBJECT_SELF,"bSPELL_SHIELD_OF_LAW",d6()); break;
case 313: SetLocalInt(OBJECT_SELF,"bSPELL_SILENCE",d6()); break;
case 314: SetLocalInt(OBJECT_SELF,"bSPELL_SLAY_LIVING",d6()); break;
case 315: SetLocalInt(OBJECT_SELF,"bSPELL_SLEEP",d6()); break;
case 316: SetLocalInt(OBJECT_SELF,"bSPELL_SLOW",d6()); break;
case 317: SetLocalInt(OBJECT_SELF,"bSPELL_SOUND_BURST",d6()); break;
case 318: SetLocalInt(OBJECT_SELF,"bSPELL_SPELL_MANTLE",d6()); break;
case 319: SetLocalInt(OBJECT_SELF,"bSPELL_SPELL_RESISTANCE",d6()); break;
case 320: SetLocalInt(OBJECT_SELF,"bSPELL_SPELLSTAFF",d6()); break;
case 321: SetLocalInt(OBJECT_SELF,"bSPELL_SPHERE_OF_CHAOS",d6()); break;
case 322: SetLocalInt(OBJECT_SELF,"bSPELL_SPIKE_GROWTH",d6()); break;
case 323: SetLocalInt(OBJECT_SELF,"bSPELL_STINKING_CLOUD",d6()); break;
case 324: SetLocalInt(OBJECT_SELF,"bSPELL_STONE_BONES",d6()); break;
case 325: SetLocalInt(OBJECT_SELF,"bSPELL_STONE_TO_FLESH",d6()); break;
case 326: SetLocalInt(OBJECT_SELF,"bSPELL_STONEHOLD",d6()); break;
case 327: SetLocalInt(OBJECT_SELF,"bSPELL_STONESKIN",d6()); break;
case 328: SetLocalInt(OBJECT_SELF,"bSPELL_STORM_OF_VENGEANCE",d6()); break;
case 329: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_I",d6()); break;
case 330: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_II",d6()); break;
case 331: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_III",d6()); break;
case 332: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IV",d6()); break;
case 333: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_V",d6()); break;
case 334: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VI",d6()); break;
case 335: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VII",d6()); break;
case 336: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_VIII",d6()); break;
case 337: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IX",d6()); break;
case 338: SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_SHADOW",d6()); break;
case 339: SetLocalInt(OBJECT_SELF,"bSPELL_SUNBEAM",d6()); break;
case 340: SetLocalInt(OBJECT_SELF,"bSPELL_SUNBURST",d6()); break;
case 341: SetLocalInt(OBJECT_SELF,"bSPELL_TASHAS_HIDEOUS_LAUGHTER",d6()); break;
case 342: SetLocalInt(OBJECT_SELF,"bSPELL_TENSERS_TRANSFORMATION",d6()); break;
case 343: SetLocalInt(OBJECT_SELF,"bSPELL_TIME_STOP",d6()); break;
case 344: SetLocalInt(OBJECT_SELF,"bSPELL_TRAP_ARROW",d6()); break;
case 345: SetLocalInt(OBJECT_SELF,"bSPELL_TRAP_BOLT",d6()); break;
case 346: SetLocalInt(OBJECT_SELF,"bSPELL_TRAP_DART",d6()); break;
case 347: SetLocalInt(OBJECT_SELF,"bSPELL_TRAP_SHURIKEN",d6()); break;
case 348: SetLocalInt(OBJECT_SELF,"bSPELL_TRUE_SEEING",d6()); break;
case 349: SetLocalInt(OBJECT_SELF,"bSPELL_TRUE_STRIKE",d6()); break;
case 350: SetLocalInt(OBJECT_SELF,"bSPELL_TYMORAS_SMILE",d6()); break;
case 351: SetLocalInt(OBJECT_SELF,"bSPELL_UNDEATH_TO_DEATH",d6()); break;
case 352: SetLocalInt(OBJECT_SELF,"bSPELL_UNDEATHS_ETERNAL_FOE",d6()); break;
case 353: SetLocalInt(OBJECT_SELF,"bSPELL_UNHOLY_AURA",d6()); break;
case 354: SetLocalInt(OBJECT_SELF,"bSPELL_VAMPIRIC_TOUCH",d6()); break;
case 355: SetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE",d6()); break;
case 356: SetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_CAMOUFLAGE",d6()); break;
case 357: SetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_ENTANGLE",d6()); break;
case 358: SetLocalInt(OBJECT_SELF,"bSPELL_VINE_MINE_HAMPER_MOVEMENT",d6()); break;
case 359: SetLocalInt(OBJECT_SELF,"bSPELL_VIRTUE",d6()); break;
case 360: SetLocalInt(OBJECT_SELF,"bSPELL_WAIL_OF_THE_BANSHEE",d6()); break;
case 361: SetLocalInt(OBJECT_SELF,"bSPELL_WALL_OF_FIRE",d6()); break;
case 362: SetLocalInt(OBJECT_SELF,"bSPELL_WAR_CRY",d6()); break;
case 363: SetLocalInt(OBJECT_SELF,"bSPELL_WEB",d6()); break;
case 364: SetLocalInt(OBJECT_SELF,"bSPELL_WEIRD",d6()); break;
case 365: SetLocalInt(OBJECT_SELF,"bSPELL_WORD_OF_FAITH",d6()); break;
case 366: SetLocalInt(OBJECT_SELF,"bSPELL_WOUNDING_WHISPERS",d6()); break;
}
}

void TemplateAbilities( )
{
    int i;
    int nHD = GetHitDice(OBJECT_SELF);
    for(i = 0; i < nHD; i++) TemplateAbility(OBJECT_SELF);
}

void TemplateSpells()
{
    int i;
    int nHD = GetHitDice(OBJECT_SELF);
    for(i = 0; i < nHD; i++) TemplateSpell(OBJECT_SELF);
}

void TemplateType()
{
    int nPoints= GetHitDice(OBJECT_SELF);
    int rt = GetRacialType(OBJECT_SELF);
    switch(rt)
    {
    case 0:
    case 1:
    case 17:
    case 18:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 10:
    case 12:
    case 13:
    case 14:
        TemplateSpells(); break;

    // dragon, reptilian, outsider
    case 11:
    case 15:
    case 20:
        if(d6() < 5)
            TemplateSpells();
        else
            TemplateAbilities();

    // animal, beast, magical beast,ooze
    case 8:
    case 9:
    case 19:
    case 29:
    case 23:
    case 25:
        TemplateAbilities();
        break;

    // undead
    case 24:
        if(d6() < 4)
            TemplateAbilities();
        else
            TemplateSpells();
        break;
    }
    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
}



