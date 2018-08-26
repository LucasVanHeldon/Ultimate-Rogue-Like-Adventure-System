
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

void TemplateAbilities(object oSkin, int HD)
{
    int i;
    for(i = 0; i < HD; i++) TemplateAbility(oSkin);
}

void TemplateType()
{
    int nPoints= GetHitDice(OBJECT_SELF);
    object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR);

    TemplateAbilities(oSkin,GetHitDice(OBJECT_SELF));
    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
}



