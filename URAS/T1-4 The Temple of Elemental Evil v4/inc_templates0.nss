/// power,num
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

    }
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
    TemplateType();
}



