
/*******************************************************************************
 *
 * Item Data
 *
 *
 ********************************************************************************/


struct sItemInfo
{
    string sBluePrint;
    string sName;
    object oItem;
    int    wType;

    int    bExotic;
    int    bDoubleSided;


};


/********************************************************************************
 *
 * Enchantment Data
 *
 *
 ********************************************************************************/

struct sEnchantments
{
    int iAlign;
    int iRace;
    int iSAlign;                // this is not working for some reason

    int iACBonus;
    int iArcaneSpellFailure;
    int iDamageImmunity;
    int iDamageImmunityType;
    int iDamageReduction;
    int iDamageReductionSoak;
    int iDamageResistance;
    int iDamageResistanceType;
    int iImprovedEvasion;

    int iAttackBonus;
    int iEnhance;
    int iDamageBonus;
    int iDamageBonusType;
    int iAbilityStr;
    int iAbilityInt;
    int iAbilityDex;
    int iAbilityCon;
    int iAbilityWis;
    int iAbilityCha;
    int iBonusSaveThrow;
    int iBonusSaveThrowType;
    int iBonusSaveF;
    int iBonusSaveR;
    int iBonusSaveW;
    int iExtraMeleeDamage;
    int iFreeAction;
    int iHolyAvenger;
    int iMassiveCritical;
    int iRegeneration;
    int iVampiricRegeneration;

    // can have up to 4 feats
    int iNumFeats;
    int iFeat1;
    int iFeat2;
    int iFeat3;
    int iFeat4;

    // can have up to 4 skills
    int iNumSkills;
    int iSkillPoints;
    int iSkill;
    int iSkillPoints1;
    int iSkill1;
    int iSkillPoints2;
    int iSkill2;
    int iSkillPoints3;
    int iSkill3;

    int iNumBonusSpellSlots;
    int iBonusSpellSlot;
    int iBonusSpellClass;
    int iBonusSpellSlot1;
    int iBonusSpellClass1;
    int iBonusSpellSlot2;
    int iBonusSpellClass2;
    int iBonusSpellSlot3;
    int iBonusSpellClass3;

    int iSpellResistance;

    int iOnHit;
    int iOnHitDC;

    int iOnHitCastSpell;
    int iOnHitCastSpellLevel;

    int iSpecial;

    // can cast up to 4 spells
    int iNumCharges;
    int iNumCastSpells;
    int iCastSpell1;
    int iCastSpellUse1;
    int iCastSpell2;
    int iCastSpellUse2;
    int iCastSpell3;
    int iCastSpellUse3;
    int iCastSpell4;
    int iCastSpellUse4;

    int iValue;
    int iPoints;
    int iTotalCost;
    int iSpecific;

    object oItem;
    string sName;
};


void ApplyEnchantments(struct sEnchantments Enchants);

