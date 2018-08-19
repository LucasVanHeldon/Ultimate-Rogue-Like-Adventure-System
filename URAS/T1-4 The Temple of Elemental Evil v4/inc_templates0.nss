/// power,num
void MMP_BoltPick(object oSkin,int n)
{
    switch(Random(16))
    {
    case 0:   SetLocalInt(OBJECT_SELF,"bBoltWeb",n); break;
    case 1:   SetLocalInt(OBJECT_SELF,"bBoltAcid",n); break;
    case 2:   SetLocalInt(OBJECT_SELF,"bBoltCharm",n); break;
    case 3:   SetLocalInt(OBJECT_SELF,"bBoltCold",n); break;
    case 4:   SetLocalInt(OBJECT_SELF,"bBoltConfused",n); break;
    case 5:   SetLocalInt(OBJECT_SELF,"bBoltDaze",n); break;
    case 6:   SetLocalInt(OBJECT_SELF,"bBoltDeath",n); break;
    case 7:   SetLocalInt(OBJECT_SELF,"bBoltDisease",n); break;
    case 8:   SetLocalInt(OBJECT_SELF,"bBoltDominate",n); break;
    case 9:   SetLocalInt(OBJECT_SELF,"bBoltFire",n); break;
    case 10:   SetLocalInt(OBJECT_SELF,"bBoltKnockdown",n); break;
    case 11:   SetLocalInt(OBJECT_SELF,"bBoltLightning",n); break;
    case 12:   SetLocalInt(OBJECT_SELF,"bBoltParalyze",n); break;
    case 13:   SetLocalInt(OBJECT_SELF,"bBoltPoison",n); break;
    case 14:   SetLocalInt(OBJECT_SELF,"bBoltShards",n); break;
    case 15:   SetLocalInt(OBJECT_SELF,"bBoltSlow",n); break;
    case 16:   SetLocalInt(OBJECT_SELF,"bBoltStun",n); break;
    }
}

void TEMPLATE_Skin(object oSkin)
{
    int die = Die(58);
    int nEffect;

    switch(die)
    {
    case 1:
        MMPABB_Adhesive(oSkin);
        break;
    case 2:
        MMPABB_Slow(oSkin);
        break;
    case 3:
        MMPABB_Sleep(oSkin);
        break;
    case 4:
        MMPABB_Blindness(oSkin);
        break;
    case 5:
        MMPABB_Daze(oSkin);
        break;
    case 6:
        MMPABB_Fear(oSkin);
        break;
    case 7:
        MMPABB_Confusion(oSkin);
        break;
    case 8:
        MMPABB_Contagion(oSkin);
        break;
    case 9:
        MMPABB_HoldPerson(oSkin);
        break;
    case 10:
        MMPABB_HoldMonster(oSkin);
        break;
    case 11:
        MMPABB_CharmingGaze(oSkin,d6());
        break;
    case 12:
        MMPABB_MindBlast(oSkin,d6());
        break;
    case 13:
        MMPABB_MindFog(oSkin,d6());
        break;
    case 14:
        MMPABB_LesserMindBlank(oSkin,d6());
        break;
    case 15:
        MMPABB_AuraBlindness(oSkin,d6());
        break;
    case 16:
        MMPABB_AuraCold(oSkin,d6());
        break;
    case 17:
        MMPABB_AuraElectricity(oSkin,d6());
        break;
    case 18:
        MMPABB_AuraFear(oSkin,d6());
        break;
    case 19:
        MMPABB_AuraFire(oSkin,d6());
        break;
    case 20:
        MMPABB_AuraHorror(oSkin,d6());
        break;
    case 21:
        MMPABB_AuraMenace(oSkin,d6());
        break;
    case 22:
        MMPABB_AuraProtection(oSkin,d6());
        break;
    case 23:
        MMPABB_AuraStun(oSkin,d6());
        break;
    case 24:
        MMPABB_AuraUnearthlyVisage(oSkin,d6());
        break;
    case 25:
        MMPABB_BoltDrainCharisma(oSkin,d6());
        break;
    case 26:
        MMPABB_BoltDrainConstitution(oSkin,d6());
        break;
    case 27:
        MMPABB_BoltDrainStrength(oSkin,d6());
        break;
    case 28:
        MMPABB_BoltDrainIntelligence(oSkin,d6());
        break;
    case 29:
        MMPABB_BoltDrainWisdom(oSkin,d6());
        break;
    case 30:
        MMPABB_SonicCone(oSkin,d6());
        break;
    case 31:
        MMPABB_GazeParalysis(oSkin,d6());
        break;
    case 32:
        MMPABB_GazeCharm(oSkin,d6());
        break;
    case 33:
        MMPABB_GazeConfusion(oSkin,d6());
        break;
    case 34:
        MMPABB_GazeDaze(oSkin,d6());
        break;
    case 35:
        MMPABB_GazeParalysis(oSkin,d6());
        break;
    case 36:
        MMPABB_GazeDominate(oSkin,d6());
        break;
    case 37:
        MMPABB_RayOfEnfeeble(oSkin,d6());
        break;
    case 38:
        MMPABB_PulseDrainCHA(oSkin,d6());
        break;
    case 39:
        MMPABB_PulseDrainINT(oSkin,d6());
        break;
    case 40:
        MMPABB_PulseDrainWIS(oSkin,d6());
        break;
    case 41:
        MMPABB_PulseDrainCON(oSkin,d6());
        break;
    case 42:
        MMPABB_PulseDrainDEX(oSkin,d6());
        break;
    case 43:
        MMPABB_PulseDrainSTR(oSkin,d6());
        break;
    case 44:
        MMPF_HoldPerson(oSkin,d6());
        break;
    case 45:
        MMPF_HoldMonster(oSkin,d6());
        break;
    case 46:
        MMPF_CharmPerson(oSkin,d6());
        break;
    case 47:
        MMPF_CharmMonster(oSkin,d6());
        break;
    case 48:
        MMPF_DominatePerson(oSkin,d6());
        break;
    case 49:
        MMPF_DominateMonster(oSkin,d6());
        break;
    case 50:
        MMPF_Boom(oSkin,d6());
        break;
    case 51:
        MMPF_Scare(oSkin,d6());
        break;
    case 52:
        MMPF_Daze(oSkin,d6());
        break;
    case 53:
        MMPF_Insanity(oSkin,d6());
        break;
    case 54:
        MMPF_DeafeningClang(oSkin,d6());
        break;
    case 55:
        MMPF_Displacement(oSkin,d6());
        break;
    case 56:
        MMPF_GhoulTouch(oSkin,d6());
        break;
    case 57:
        MMPF_VampiricTouch(oSkin,d6());
        break;
    case 58:
        MMPMRBD_PulseDrainDEX(oSkin,d6());
        break;
    case 59:
        MMPMRBD_Contagion(oSkin);
        break;
    case 60:
        MMPMRBD_HoldPerson(oSkin);
        break;
    case 61:
        MMPMRBD_HoldMonster(oSkin);
        break;
    case 62:
        MMPMRBD_PulseDrainCHA(oSkin,d6());
        break;
    case 63:
        MMPMRBD_PulseDrainINT(oSkin,d6());
        break;
    case 64:
        MMPMRBD_PulseDrainWIS(oSkin,d6());
        break;
    case 65:
        MMPMRBD_PulseDrainCON(oSkin,d6());
        break;
    case 66:
        MMPMRBD_PulseLevelDrain(oSkin,d6());
        break;
    case 67:
        MMPMRBD_Darkness(oSkin);
        break;
    case 68:
        MMPMRBD_Bane(oSkin);
        break;
    case 69:
        MMPMRBD_BestowCurse(oSkin);
        break;
    case 70:
        MMPMRBD_DispelMagic(oSkin);
        break;
     case 71:
        MMPMRBD_Doom(oSkin);
        break;
    case 72:
        MMPMRBD_EnergyDrain(oSkin);
        break;
    case 73:
        MMPMRBD_EvilBlight(oSkin);
        break;
    case 74:
        MMPMRBD_GhoulTouch(oSkin);
        break;
    case 75:
        MMPMRBD_HorridWilting(oSkin);
        break;
    case 76:
        MMPMRBD_InfestationOfMaggots(oSkin);
        break;
    case 77:
        MMPMRBD_NegativeEnergyBurst(oSkin);
        break;
    case 78:
        MMPMRBD_PhantasmalKiller(oSkin);
        break;
    case 79:
        MMPMRBD_VampiricTouch(oSkin);
        break;
    case 80:
        MMPMRBD_PulseNegative(oSkin);
        break;
    case 81:
        MMPMRBD_PulseDrainSTR(oSkin,d6());
        break;
    case 82:
        MMPF_FeebleMind(oSkin);
        break;
    case 84:
        MMPABB_Slow(oSkin);
        break;
    case 85:
        MMPABB_Blindness(oSkin);
        break;
    case 86:
        MMPABB_Contagion(oSkin);
        break;
    case 87:
        MMPABB_HoldPerson(oSkin);
        break;
    case 88:
        MMPABB_HoldMonster(oSkin);
        break;
    case 89:
        MMPABB_MindBlast(oSkin,d6());
        break;
    case 90:
        MMPABB_MindFog(oSkin,d6());
        break;
    case 91:
        MMPABB_LesserMindBlank(oSkin,d6());
        break;
    case 92:
        MMPABB_BoltDrainCharisma(oSkin,d6());
        break;
    case 93:
        MMPABB_BoltDrainConstitution(oSkin,d6());
        break;
    case 94:
        MMPABB_BoltDrainStrength(oSkin,d6());
        break;
    case 95:
        MMPABB_BoltDrainIntelligence(oSkin,d6());
        break;
    case 96:
        MMPABB_BoltDrainWisdom(oSkin,d6());
        break;
    case 97:
        MMPOOZE_BoltAcid(oSkin,d6());
        break;
    case 98:
        MMPOOZE_BoltDeath(oSkin,d6());
        break;
    case 99:
        MMPOOZE_BoltDisease(oSkin,d6());
        break;
    case 100:
        MMPOOZE_BoltPoison(oSkin,d6());
        break;
    case 101:
        MMPABB_BoltDrainWisdom(oSkin,d6());
        break;
    case 102:
        MMPABB_SonicCone(oSkin,d6());
        break;
    case 103:
        MMPABB_RayOfEnfeeble(oSkin,d6());
        break;
    case 104:
        MMPABB_PulseDrainCHA(oSkin,d6());
        break;
    case 105:
        MMPABB_PulseDrainINT(oSkin,d6());
        break;
    case 106:
        MMPABB_PulseDrainWIS(oSkin,d6());
        break;
    case 107:
        MMPABB_PulseDrainCON(oSkin,d6());
        break;
    case 108:
        MMPABB_PulseDrainDEX(oSkin,d6());
        break;
    case 109:
        MMPABB_PulseDrainSTR(oSkin,d6());
        break;
    case 110:
        MMPOOZE_PulseDisease(oSkin,d6());
        break;
    case 111:
        MMPOOZE_PulseDeath(oSkin,d6());
        break;
    case 112:
        MMPOOZE_PulsePoison(oSkin,d6());
        break;
    case 113:
        MMPOOZE_EvardsBlackTentacles(oSkin);
        break;

    case 114:
        MMP_BoltPick(oSkin,d6());
        break;

    }
}

void TemplateAbility(object oSkin)
{
switch(Random(174))
{
case 0: SetLocalInt(oSkin,"bCONE_POISON",d6()); break;
case 1: SetLocalInt(oSkin,"bSUMMON_TANARRI",d6()); break;
case 2: SetLocalInt(oSkin,"bRAGE_5",d6()); break;
case 3: SetLocalInt(oSkin,"bSUMMON_MEPHIT",d6()); break;
case 4: SetLocalInt(oSkin,"bPULSE_ABILITY_DRAIN_DEXTERITY",d6()); break;
case 5: SetLocalInt(oSkin,"bBOLT_WEB",d6()); break;
case 6: SetLocalInt(oSkin,"bBOLT_POISON",d6()); break;
case 7: SetLocalInt(oSkin,"bGAZE_DESTROY_EVIL",d6()); break;
case 8: SetLocalInt(oSkin,"bBG_CONTAGION",d6()); break;
case 9: SetLocalInt(oSkin,"bGAZE_CONFUSION",d6()); break;
case 10: SetLocalInt(oSkin,"bLAY_ON_HANDS",d6()); break;
case 11: SetLocalInt(oSkin,"bEPIC_MIGHTY_RAGE",d6()); break;
case 12: SetLocalInt(oSkin,"bCONE_FIRE",d6()); break;
case 13: SetLocalInt(oSkin,"bEPIC_IMPROVED_WHIRLWIND",d6()); break;
case 14: SetLocalInt(oSkin,"bDRAGON_BREATH_PARALYZE",d6()); break;
case 15: SetLocalInt(oSkin,"bSUMMON_SLAAD",d6()); break;
case 16: SetLocalInt(oSkin,"bPULSE_ABILITY_DRAIN_CHARISMA",d6()); break;
case 17: SetLocalInt(oSkin,"bAURA_UNEARTHLY_VISAGE",d6()); break;
case 18: SetLocalInt(oSkin,"bBOLT_PARALYZE",d6()); break;
case 19: SetLocalInt(oSkin,"bAURA_OF_COURAGE",d6()); break;
case 20: SetLocalInt(oSkin,"bTOUCH_PETRIFY",d6()); break;
case 21: SetLocalInt(oSkin,"bPULSE_LIGHTNING",d6()); break;
case 22: SetLocalInt(oSkin,"bAA_SEEKER_ARROW_1",d6()); break;
case 23: SetLocalInt(oSkin,"bAA_SEEKER_ARROW_2",d6()); break;
case 24: SetLocalInt(oSkin,"bDRAGON_BREATH_FEAR",d6()); break;
case 25: SetLocalInt(oSkin,"bBOLT_SLOW",d6()); break;
case 26: SetLocalInt(oSkin,"bDRAGON_BREATH_LIGHTNING",d6()); break;
case 27: SetLocalInt(oSkin,"bPULSE_DROWN",d6()); break;
case 28: SetLocalInt(oSkin,"bPULSE_COLD",d6()); break;
case 29: SetLocalInt(oSkin,"bPULSE_ABILITY_DRAIN_STRENGTH",d6()); break;
case 30: SetLocalInt(oSkin,"bELEMENTAL_SHAPE",d6()); break;
case 31: SetLocalInt(oSkin,"bDW_DEFENSIVE_STANCE",d6()); break;
case 32: SetLocalInt(oSkin,"bPM_DEATHLESS_MASTER_TOUCH",d6()); break;
case 33: SetLocalInt(oSkin,"bGAZE_FEAR",d6()); break;
case 34: SetLocalInt(oSkin,"bBOLT_ABILITY_DRAIN_INTELLIGENCE",d6()); break;
case 35: SetLocalInt(oSkin,"bTROGLODYTE_STENCH",d6()); break;
case 36: SetLocalInt(oSkin,"bBOLT_ABILITY_DRAIN_DEXTERITY",d6()); break;
case 37: SetLocalInt(oSkin,"bAURA_UNNATURAL",d6()); break;
case 38: SetLocalInt(oSkin,"bBOLT_LIGHTNING",d6()); break;
case 39: SetLocalInt(oSkin,"bBOLT_SHARDS",d6()); break;
case 40: SetLocalInt(oSkin,"bTRUMPET_BLAST",d6()); break;
case 41: SetLocalInt(oSkin,"bCONE_COLD",d6()); break;
case 42: SetLocalInt(oSkin,"bBOLT_ABILITY_DRAIN_STRENGTH",d6()); break;
case 43: SetLocalInt(oSkin,"bEPIC_CURSE_SONG",d6()); break;
case 44: SetLocalInt(oSkin,"bCHARMMONSTER",d6()); break;
case 45: SetLocalInt(oSkin,"bHOWL_DOOM",d6()); break;
case 46: SetLocalInt(oSkin,"bPULSE_DISEASE",d6()); break;
case 47: SetLocalInt(oSkin,"bHELL_HOUND_FIREBREATH",d6()); break;
case 48: SetLocalInt(oSkin,"bGAZE_PETRIFY",d6()); break;
case 49: SetLocalInt(oSkin,"bAA_HAIL_OF_ARROWS",d6()); break;
case 50: SetLocalInt(oSkin,"bDRAGON_FEAR",d6()); break;
case 51: SetLocalInt(oSkin,"bAS_GHOSTLY_VISAGE",d6()); break;
case 52: SetLocalInt(oSkin,"bHOWL_FEAR",d6()); break;
case 53: SetLocalInt(oSkin,"bAS_INVISIBILITY",d6()); break;
case 54: SetLocalInt(oSkin,"bAS_IMPROVED_INVISIBLITY",d6()); break;
case 55: SetLocalInt(oSkin,"bSUMMON_FAMILIAR",d6()); break;
case 56: SetLocalInt(oSkin,"bBOLT_DEATH",d6()); break;
case 57: SetLocalInt(oSkin,"bBREATH_PETRIFY",d6()); break;
case 58: SetLocalInt(oSkin,"bAURA_FEAR",d6()); break;
case 59: SetLocalInt(oSkin,"bEMPTY_BODY",d6()); break;
case 60: SetLocalInt(oSkin,"bGAZE_DOMINATE",d6()); break;
case 61: SetLocalInt(oSkin,"bPULSE_WHIRLWIND",d6()); break;
case 62: SetLocalInt(oSkin,"bLESSER_BODY_ADJUSTMENT",d6()); break;
case 63: SetLocalInt(oSkin,"bMEPHIT_SALT_BREATH",d6()); break;
case 64: SetLocalInt(oSkin,"bPULSE_LEVEL_DRAIN",d6()); break;
case 65: SetLocalInt(oSkin,"bGOLEM_BREATH_GAS",d6()); break;
case 66: SetLocalInt(oSkin,"bBOLT_FIRE",d6()); break;
case 67: SetLocalInt(oSkin,"bHOWL_DEATH",d6()); break;
case 68: SetLocalInt(oSkin,"bHOWL_PARALYSIS",d6()); break;
case 69: SetLocalInt(oSkin,"bPM_SUMMON_GREATER_UNDEAD",d6()); break;
case 70: SetLocalInt(oSkin,"bBOLT_DAZE",d6()); break;
case 71: SetLocalInt(oSkin,"bTURN_UNDEAD",d6()); break;
case 72: SetLocalInt(oSkin,"bPULSE_NEGATIVE",d6()); break;
case 73: SetLocalInt(oSkin,"bACTIVATE_ITEM",d6()); break;
case 74: SetLocalInt(oSkin,"bPULSE_HOLY",d6()); break;
case 75: SetLocalInt(oSkin,"bSMOKE_CLAW",d6()); break;
case 76: SetLocalInt(oSkin,"bDIVINE_STRENGTH",d6()); break;
case 77: SetLocalInt(oSkin,"bPULSE_ABILITY_DRAIN_WISDOM",d6()); break;
case 78: SetLocalInt(oSkin,"bNEGATIVE_PLANE_AVATAR",d6()); break;
case 79: SetLocalInt(oSkin,"bDRAGON_BREATH_ACID",d6()); break;
case 80: SetLocalInt(oSkin,"bMINDBLAST",d6()); break;
case 81: SetLocalInt(oSkin,"bBOLT_ABILITY_DRAIN_WISDOM",d6()); break;
case 82: SetLocalInt(oSkin,"bDRAGON_BREATH_SLEEP",d6()); break;
case 83: SetLocalInt(oSkin,"bBG_CREATEDEAD",d6()); break;
case 84: SetLocalInt(oSkin,"bBG_BULLS_STRENGTH",d6()); break;
case 85: SetLocalInt(oSkin,"bBATTLE_MASTERY",d6()); break;
case 86: SetLocalInt(oSkin,"bSUMMON_ANIMAL_COMPANION",d6()); break;
case 87: SetLocalInt(oSkin,"bDETECT_EVIL",d6()); break;
case 88: SetLocalInt(oSkin,"bWHOLENESS_OF_BODY",d6()); break;
case 89: SetLocalInt(oSkin,"bGAZE_DAZE",d6()); break;
case 90: SetLocalInt(oSkin,"bTYRANT_FOG_MIST",d6()); break;
case 91: SetLocalInt(oSkin,"bKRENSHAR_SCARE",d6()); break;
case 92: SetLocalInt(oSkin,"bDRAGON_BREATH_NEGATIVE",d6()); break;
case 93: SetLocalInt(oSkin,"bAURA_STUN",d6()); break;
case 94: SetLocalInt(oSkin,"bAURA_PROTECTION",d6()); break;
case 95: SetLocalInt(oSkin,"bDRAGON_BREATH_GAS",d6()); break;
case 96: SetLocalInt(oSkin,"bBOLT_STUN",d6()); break;
case 97: SetLocalInt(oSkin,"bGAZE_PARALYSIS",d6()); break;
case 98: SetLocalInt(oSkin,"bHOWL_SONIC",d6()); break;
case 99: SetLocalInt(oSkin,"bCONE_LIGHTNING",d6()); break;
case 100: SetLocalInt(oSkin,"bROGUES_CUNNING",d6()); break;
case 101: SetLocalInt(oSkin,"bREMOVE_DISEASE",d6()); break;
case 102: SetLocalInt(oSkin,"bGAZE_DESTROY_GOOD",d6()); break;
case 103: SetLocalInt(oSkin,"bINTENSITY_3",d6()); break;
case 104: SetLocalInt(oSkin,"bINTENSITY_2",d6()); break;
case 105: SetLocalInt(oSkin,"bINTENSITY_1",d6()); break;
case 106: SetLocalInt(oSkin,"bCONE_SONIC",d6()); break;
case 107: SetLocalInt(oSkin,"bHOWL_STUN",d6()); break;
case 108: SetLocalInt(oSkin,"bBG_INFLICT_SERIOUS_WOUNDS",d6()); break;
case 109: SetLocalInt(oSkin,"bCONE_ACID",d6()); break;
case 110: SetLocalInt(oSkin,"bQUIVERING_PALM",d6()); break;
case 111: SetLocalInt(oSkin,"bDRAGON_BREATH_WEAKEN",d6()); break;
case 112: SetLocalInt(oSkin,"bAURA_ELECTRICITY",d6()); break;
case 113: SetLocalInt(oSkin,"bPULSE_ABILITY_DRAIN_CONSTITUTION",d6()); break;
case 114: SetLocalInt(oSkin,"bHOWL_CONFUSE",d6()); break;
case 115: SetLocalInt(oSkin,"bBOLT_LEVEL_DRAIN",d6()); break;
case 116: SetLocalInt(oSkin,"bAURA_COLD",d6()); break;
case 117: SetLocalInt(oSkin,"bPULSE_DEATH",d6()); break;
case 118: SetLocalInt(oSkin,"bBOLT_CHARM",d6()); break;
case 119: SetLocalInt(oSkin,"bDRAGON_BREATH_SLOW",d6()); break;
case 120: SetLocalInt(oSkin,"bBOLT_CONFUSE",d6()); break;
case 121: SetLocalInt(oSkin,"bHOWL_DAZE",d6()); break;
case 122: SetLocalInt(oSkin,"bBARBARIAN_RAGE",d6()); break;
case 123: SetLocalInt(oSkin,"bSEAHAG_EVILEYE",d6()); break;
case 124: SetLocalInt(oSkin,"bGAZE_DESTROY_CHAOS",d6()); break;
case 125: SetLocalInt(oSkin,"bAS_DARKNESS",d6()); break;
case 126: SetLocalInt(oSkin,"bAURA_BLINDING",d6()); break;
case 127: SetLocalInt(oSkin,"bPULSE_SPORES",d6()); break;
case 128: SetLocalInt(oSkin,"bGAZE_DEATH",d6()); break;
case 129: SetLocalInt(oSkin,"bBOLT_COLD",d6()); break;
case 130: SetLocalInt(oSkin,"bAURA_MENACE",d6()); break;
case 131: SetLocalInt(oSkin,"bSUMMON_CELESTIAL",d6()); break;
case 132: SetLocalInt(oSkin,"bPM_UNDEAD_GRAFT_2",d6()); break;
case 133: SetLocalInt(oSkin,"bAURA_FIRE",d6()); break;
case 134: SetLocalInt(oSkin,"bBOLT_ACID",d6()); break;
case 135: SetLocalInt(oSkin,"bRAGE_3",d6()); break;
case 136: SetLocalInt(oSkin,"bRAGE_4",d6()); break;
case 137: SetLocalInt(oSkin,"bDRAGON_BREATH_COLD",d6()); break;
case 138: SetLocalInt(oSkin,"bFEROCITY_2",d6()); break;
case 139: SetLocalInt(oSkin,"bFEROCITY_3",d6()); break;
case 140: SetLocalInt(oSkin,"bCOMMAND_THE_HORDE",d6()); break;
case 141: SetLocalInt(oSkin,"bPULSE_ABILITY_DRAIN_INTELLIGENCE",d6()); break;
case 142: SetLocalInt(oSkin,"bDIVINE_PROTECTION",d6()); break;
case 143: SetLocalInt(oSkin,"bFEROCITY_1",d6()); break;
case 144: SetLocalInt(oSkin,"bAURA_HORRIFICAPPEARANCE",d6()); break;
case 145: SetLocalInt(oSkin,"bDIVINE_TRICKERY",d6()); break;
case 146: SetLocalInt(oSkin,"bDRAGON_BREATH_FIRE",d6()); break;
case 147: SetLocalInt(oSkin,"bPULSE_FIRE",d6()); break;
case 148: SetLocalInt(oSkin,"bMUMMY_BOLSTER_UNDEAD",d6()); break;
case 149: SetLocalInt(oSkin,"bBOLT_KNOCKDOWN",d6()); break;
case 150: SetLocalInt(oSkin,"bMANTICORE_SPIKES",d6()); break;
case 151: SetLocalInt(oSkin,"bGAZE_DOOM",d6()); break;
case 152: SetLocalInt(oSkin,"bAA_IMBUE_ARROW",d6()); break;
case 153: SetLocalInt(oSkin,"bGAZE_DESTROY_LAW",d6()); break;
case 154: SetLocalInt(oSkin,"bMEPHIT_STEAM_BREATH",d6()); break;
case 155: SetLocalInt(oSkin,"bPM_SUMMON_UNDEAD",d6()); break;
case 156: SetLocalInt(oSkin,"bWHIRLWIND",d6()); break;
case 157: SetLocalInt(oSkin,"bBOLT_ABILITY_DRAIN_CONSTITUTION",d6()); break;
case 158: SetLocalInt(oSkin,"bEPIC_SHAPE_DRAGON",d6()); break;
case 159: SetLocalInt(oSkin,"bPM_ANIMATE_DEAD",d6()); break;
case 160: SetLocalInt(oSkin,"bBOLT_DISEASE",d6()); break;
case 161: SetLocalInt(oSkin,"bGAZE_STUNNED",d6()); break;
case 162: SetLocalInt(oSkin,"bBOLT_DOMINATE",d6()); break;
case 163: SetLocalInt(oSkin,"bDC_DIVINE_WRATH",d6()); break;
case 164: SetLocalInt(oSkin,"bSMITE_EVIL",d6()); break;
case 165: SetLocalInt(oSkin,"bGAZE_CHARM",d6()); break;
case 166: SetLocalInt(oSkin,"bDRAGON_WING_BUFFET",d6()); break;
case 167: SetLocalInt(oSkin,"bWILD_SHAPE",d6()); break;
case 168: SetLocalInt(oSkin,"bBG_INFLICT_CRITICAL_WOUNDS",d6()); break;
case 169: SetLocalInt(oSkin,"bBG_FIENDISH_SERVANT",d6()); break;
case 170: SetLocalInt(oSkin,"bEPIC_SHAPE_DRAGONKIN",d6()); break;
case 171: SetLocalInt(oSkin,"bAA_ARROW_OF_DEATH",d6()); break;
case 172: SetLocalInt(oSkin,"bPM_UNDEAD_GRAFT_1",d6()); break;
case 173: SetLocalInt(oSkin,"bCONE_DISEASE",d6()); break;
case 174: SetLocalInt(oSkin,"bBOLT_ABILITY_DRAIN_CHARISMA",d6()); break;
}
}

void TemplateAbilities(object oSkin, int HD)
{
    int i;
    for(i = 0; i < HD; i++) TemplateAbility(oSkin);
}

// All Spells/Levels
//  Cleric, Druid, Wizard, Bard, Paladin, Ranger
//  A;l Abilities
// Number of uses on skin (bHasPower,n)
void TemplateType()
{
    int nPoints= GetHitDice(OBJECT_SELF);
    object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR);
    int i;

    TemplateAbilities(oSkin,GetHitDice(OBJECT_SELF));
    switch(d4())
    {
    // psychic
    case 1:
        nPoints = nPoints + GetAbilityModifier(ABILITY_INTELLIGENCE);
        nPoints = nPoints + GetAbilityModifier(ABILITY_WISDOM);
        nPoints = nPoints + GetAbilityModifier(ABILITY_CHARISMA);
        SetLocalInt(OBJECT_SELF,"nPoints",nPoints);
        break;
    // strange powerrs
    case 2:
        for(i = 0; i < GetHitDice(OBJECT_SELF)/3+1; i++) TEMPLATE_Skin(oSkin);
        break;
    // Morbid
    case 3:
        for(i = 0; i < GetHitDice(OBJECT_SELF)/3+1; i++) MMP_MorbidTemplate(oSkin);
        break;
    // Demonic powers manifest at will
    case 4:
        SetLocalInt(OBJECT_SELF,"nDemonic",1);
        break;
    }
    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
}



