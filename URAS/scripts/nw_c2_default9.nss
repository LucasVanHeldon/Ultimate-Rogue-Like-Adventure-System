// This is alpha everyting in here is subject to and will change.

#include "x0_i0_anims"
#include "x0_i0_treasure"

#include "x2_inc_switches"
#include "x3_inc_skin"
#include "x2_i0_spells"

#include "lutes"
#include "ai_inc"

#include "mmp_lutes"
#include "inc_mmpaberr"
#include "inc_mmpmrbd"
#include "inc_mmpooze"

#include "inc_templates0"
#include "sd_lootsystem"
#include "oc_inc_spawn"

int iSocketedLootChance = 0;
int bMunchkin = FALSE;          // Set to TRUE if you want to use the munchkin (no monster upgrades)
int bOC = TRUE;                 // Set to TRUE if compiling for Official campaign
int bModifyArmorAndWeapons=FALSE;


void PersonalSpellBook()
{
    struct sItemInfo info;
    info.sBluePrint = "lutes_spells";
    info.oItem = CreateItemOnObject("lutes_spells",oObject);
    object oldItem=info.oItem;
    info.oItem= CopyItemAndModify(info.oItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(10));
    if(GetIsObjectValid(info.oItem)) DestroyObject(oldItem);

    int i;
    for(i = 0; i < iChestLevel*2; i++)
    {
        EnchantSpellBook(info);
    }
    SetName(info.oItem,"Spell Book");
    SetDroppableFlag(info.oItem,FALSE);
}



int GetIsAberration(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_ABERRATION)
            return TRUE;
    }
    return FALSE;
}

int GetIsMonk(object oTarget)
{
    int i;
    for(i = 1; i < 4; i++)
    {
        if( GetClassByPosition(i,oTarget) == CLASS_TYPE_MONK ) return TRUE;
    }
    return FALSE;
}

int GetIsFighter(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_FIGHTER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_PALADIN ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_BARBARIAN ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_RANGER)
            return TRUE;
    }
    return FALSE;
}

int GetIsRogue(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_ROGUE ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_BARD ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_ASSASSIN)
            return TRUE;
    }
    return FALSE;
}

int GetIsMagicUser(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_SORCERER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_WIZARD)
            return TRUE;
    }
    return FALSE;
}

int GetIsCleric(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_CLERIC ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_DRUID)
            return TRUE;
    }
    return FALSE;
}

void GiveXP(object oPC, int nXP)
{
    // Calculate new XP value
    nXP=GetXP(oPC)+nXP;

    SetXP(oPC, nXP);
}


int CalcEL(object oC)
{
    object oX = GetFirstPC();
    int total = 0;
    int cnt = 0;

    while(GetIsObjectValid(oX))
    {
        if(GetIsEnemy(oX,oC) || GetIsPC(oX))
        {
            total += GetCharacterLevel(oX);
            cnt++;
        }
        oX = GetNextPC();
    }
    //SendMessageToPC(GetFirstPC(),"total="+IntToString(total)+",cnt="+IntToString(cnt));
    if(cnt == 0) return 0;
    return total/cnt;
}

void LevelUp()
{
    // this doesn't really work
    int EL = CalcEL(OBJECT_SELF);
    int class1 = GetClassByPosition(0);
    int class2 = GetClassByPosition(1);
    int class3 = GetClassByPosition(2);

    while(GetCharacterLevel(OBJECT_SELF) < EL)
    {
        if(!LevelUpHenchman(OBJECT_SELF,class1,TRUE))
            if(!LevelUpHenchman(OBJECT_SELF,class2,TRUE))
                if(!LevelUpHenchman(OBJECT_SELF,class3,TRUE))
                    if(!LevelUpHenchman(OBJECT_SELF,Random(41),TRUE,Random(256)))
                    {
                        SendMessageToPC(GetFirstPC(),GetName(OBJECT_SELF) + " failed to lvl up.");
                        break;
                    }

    }

}


object GetSkin()
{
    object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR,OBJECT_SELF);
    return oSkin;
}

void EnhanceSkin()
{
    object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR,OBJECT_SELF);
    iChestLevel = GetHitDice(OBJECT_SELF);
    if(!GetIsObjectValid(oSkin))
    {
        oSkin = CreateItemOnObject("mmp_baseskin");
        AssignCommand(OBJECT_SELF,SKIN_SupportEquipSkin(oSkin));
    }
    if(d6() < 4)
    {
        itemproperty ip = ItemPropertySkillBonus(255, d10());
        IPSafeAddItemProperty(oSkin,ip);
    }

    if(GetRacialType(OBJECT_SELF)== RACIAL_TYPE_UNDEAD || GetRacialType(OBJECT_SELF)== RACIAL_TYPE_OUTSIDER)
    {
        itemproperty ip;
        // they are dead, internal organs don't feel anything.
        ip = ItemPropertyDamageImmunity(IP_CONST_DAMAGETYPE_BLUDGEONING,4);
        IPSafeAddItemProperty(oSkin,ip);
        // they are dead, it sticks in their rotting flesh.
        ip = ItemPropertyDamageImmunity(IP_CONST_DAMAGETYPE_PIERCING,4);
        IPSafeAddItemProperty(oSkin,ip);
        int nRed = GetHitDice(OBJECT_SELF)/4;
        int soak = 2; // soak 10, don't make it impossible.
        ip = ItemPropertyDamageReduction(nRed,soak);
        IPSafeAddItemProperty(oSkin,ip);
    }

    struct sItemInfo ItemInfo;
    struct sEnchantments Enchants;
    oObject = OBJECT_SELF;
    ItemInfo.oItem = oSkin;
    EnchantArmor(ItemInfo);
    SetIdentified(oSkin,TRUE);
    SetDroppableFlag(oSkin,FALSE);
}



void EnhanceItems()
{
    int n = d6();
    int i;

    if(GetIsMagicUser(OBJECT_SELF) || GetIsCleric(OBJECT_SELF) || GetIsFighter(OBJECT_SELF) || GetIsRogue(OBJECT_SELF) || GetIsMonk(OBJECT_SELF))
    {
        object oRing =MMP_GenerateRing();
        AssignCommand(OBJECT_SELF,ActionEquipItem(oRing,INVENTORY_SLOT_RIGHTRING));
        SetDroppableFlag(oRing,FALSE);
        SetIdentified(oRing,TRUE);
        oRing = MMP_GenerateRing();
        AssignCommand(OBJECT_SELF,ActionEquipItem(oRing,INVENTORY_SLOT_LEFTRING));
        SetDroppableFlag(oRing,FALSE);
        SetIdentified(oRing,TRUE);
        object oAmulet = MMP_GenerateAmulet();
        AssignCommand(OBJECT_SELF,ActionEquipItem(oAmulet,INVENTORY_SLOT_NECK));
        SetDroppableFlag(oAmulet,FALSE);
        SetIdentified(oAmulet,TRUE);
    }


    object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST);
    struct sItemInfo iteminfo;
    if(GetIsObjectValid(oArmor))
    {
        iteminfo.oItem = oArmor;
        iteminfo.sBluePrint = GetResRef(oArmor);
        EnchantArmor(iteminfo);
        SetIdentified(oArmor,TRUE);
        SetDroppableFlag(oArmor,FALSE);

    }


    oArmor = GetItemInSlot(INVENTORY_SLOT_LEFTHAND);
    int iBase = GetBaseItemType(oArmor);
    if(GetIsObjectValid(oArmor) && (iBase == BASE_ITEM_SMALLSHIELD || iBase == BASE_ITEM_LARGESHIELD || iBase==BASE_ITEM_TOWERSHIELD))
    {
        iteminfo.oItem = oArmor;
        iteminfo.sBluePrint = GetResRef(oArmor);
        EnchantArmor(iteminfo);
        SetIdentified(oArmor,TRUE);
        SetDroppableFlag(oArmor,FALSE);

    }
    else if(GetIsObjectValid(oArmor))
    {
        iteminfo.oItem = oArmor;
        iteminfo.sBluePrint = GetResRef(oArmor);
        EnchantWeapon(iteminfo);
        SetIdentified(oArmor,TRUE);
        SetDroppableFlag(oArmor,FALSE);

    }


    object oWeapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND);
    if(GetIsObjectValid(oWeapon) && GetLocalInt(OBJECT_SELF,"bDontUpgradeWeapons")==0)
    {
        iteminfo.oItem = oWeapon;
        iteminfo.sBluePrint = GetResRef(oWeapon);
        if(!GetWeaponRanged(oWeapon))
            EnchantWeapon(iteminfo);
        else
            EnchantRangedWeapon(iteminfo);

        SetIdentified(oWeapon,TRUE);
        SetDroppableFlag(oWeapon,FALSE);
    }

    oWeapon = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
    if(GetIsObjectValid(oWeapon))
    {
        iteminfo.oItem = oWeapon;
        iteminfo.sBluePrint = GetResRef(oWeapon);
        if(!GetWeaponRanged(oWeapon))
            EnchantWeapon(iteminfo);
        else
            EnchantRangedWeapon(iteminfo);
        SetIdentified(oWeapon,TRUE);
        SetDroppableFlag(oWeapon,FALSE);

    }

    oWeapon = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
    if(GetIsObjectValid(oWeapon))
    {
        iteminfo.oItem = oWeapon;
        iteminfo.sBluePrint = GetResRef(oWeapon);
        if(!GetWeaponRanged(oWeapon))
            EnchantWeapon(iteminfo);
        else
            EnchantRangedWeapon(iteminfo);
        SetIdentified(oWeapon,TRUE);
        SetDroppableFlag(oWeapon,FALSE);

    }


    oWeapon = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
    if(GetIsObjectValid(oWeapon))
    {
        iteminfo.oItem = oWeapon;
        iteminfo.sBluePrint = GetResRef(oWeapon);
        if(!GetWeaponRanged(oWeapon))
            EnchantWeapon(iteminfo);
        else
            EnchantRangedWeapon(iteminfo);
        SetIdentified(oWeapon,TRUE);
        SetDroppableFlag(oWeapon,FALSE);

    }

    if(GetIsMagicUser(OBJECT_SELF))
    {
        int i;
        for(i = 0; i < d4(); i++)
            CreateArcaneScroll(OBJECT_SELF,OBJECT_SELF);
        CreatePotions(d4());


    }
    else if(GetIsCleric(OBJECT_SELF))
    {
        int i;
        for(i = 0; i < d4(); i++)
            CreateDivineScroll(OBJECT_SELF,OBJECT_SELF);
        CreatePotions(d4());

    }
    if(GetIsFighter(OBJECT_SELF) || GetIsRogue(OBJECT_SELF) || GetIsMonk(OBJECT_SELF) || GetIsMagicUser(OBJECT_SELF) || GetIsCleric(OBJECT_SELF) )
        CreatePotions(d4());
}


void UpdateSizeBonusIncr(int size)
{
    effect eF;
    switch(size)
    {
    // tiny huge only goes up, not down for now.
    case 2:
        eF = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_STRENGTH,4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectAttackDecrease(2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectDamageIncrease(1);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        SetName(OBJECT_SELF,"(Small) " + GetName(OBJECT_SELF));

        break;
      // small to medium
    case 3:
        eF = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_STRENGTH,4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_CONSTITUTION,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectTemporaryHitpoints(d12(4));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectDamageIncrease(2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        SetName(OBJECT_SELF,"(Medium) " + GetName(OBJECT_SELF));
        break;
    // medium to large
    case 4:
        eF = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_STRENGTH,8);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectACIncrease(2,AC_NATURAL_BONUS);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectTemporaryHitpoints(d12(8));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectDamageIncrease(4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        SetName(OBJECT_SELF,"(Large) " + GetName(OBJECT_SELF));
        break;
    // large to huge
    case 5:
        eF = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_STRENGTH,8);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectACIncrease(3,AC_NATURAL_BONUS);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectTemporaryHitpoints(d12(12));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectDamageIncrease(8);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        SetName(OBJECT_SELF,"(Huge) " + GetName(OBJECT_SELF));
        break;
    }
}

void IncreaseSizeTemplate()
{
    int size = GetCreatureSize(OBJECT_SELF);
    // only goes to huge right now
    if(size < 5)
    {
        size++;
        float scale = 1.5;
        float n =SetObjectVisualTransform(OBJECT_SELF, OBJECT_VISUAL_TRANSFORM_SCALE,scale);
        UpdateSizeBonusIncr(size);
    }
}

void IncreaseWeaponSize(object oWeapon)
{
    float scale = 1.0 + IntToFloat(Random(1000))/2000.0;
    float n =SetObjectVisualTransform(oWeapon, OBJECT_VISUAL_TRANSFORM_SCALE,scale);
}

void RandomTemplate()
{
    int n = GetHitDice(OBJECT_SELF);
    int i;
    effect eEffect;
    for(i = 0; i < n; i++)
    {
        switch(Random(28))
        {
        case 0:
                eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,d4());
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        case 1:
                eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,d4());
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        case 2:
                eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,d4());
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        case 3:
                eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,d4());
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        case 4:
                eEffect = EffectAbilityIncrease(ABILITY_WISDOM,d4());
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        case 5:
            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,d4());
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            break;
        case 6:
            eEffect = EffectTemporaryHitpoints(d12(GetHitDice(OBJECT_SELF)/3+1));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            break;
        case 7:
            eEffect = EffectACIncrease(GetHitDice(OBJECT_SELF)/3+1);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            break;
        case 8:
            eEffect = EffectAttackIncrease(GetHitDice(OBJECT_SELF)/3+1);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            break;
        case 10:
            eEffect = EffectDamageIncrease(GetHitDice(OBJECT_SELF)/3+1);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            break;

        case 9:
            eEffect = EffectConcealment(Random(100));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            break;
        case 11:
            {
                int n = 0;
                if(d6() == 1) n |= 1;
                if(d6() == 1) n |= 2;
                if(d6() == 1) n |= 4;
                if(d6() == 1) n |= 8;
                if(d6() == 1) n |= 16;
                if(d6() == 1) n |= 32;
                if(d6() == 1) n |= 64;
                if(d6() == 1) n |= 128;
                if(d6() == 1) n |= 256;
                if(d6() == 1) n |= 512;
                if(d6() == 1) n |= 1024;
                if(d6() == 1) n |= 2048;
                if(d6() == 1) n |= 4096;
                ;
                eEffect = EffectDamageImmunityIncrease(n,Random(100));
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 12:
            {
                int n = 0;
                if(d6() == 1) n |= 1;
                if(d6() == 1) n |= 2;
                if(d6() == 1) n |= 4;
                if(d6() == 1) n |= 8;
                if(d6() == 1) n |= 16;
                if(d6() == 1) n |= 32;
                if(d6() == 1) n |= 64;
                if(d6() == 1) n |= 128;
                if(d6() == 1) n |= 256;
                if(d6() == 1) n |= 512;
                if(d6() == 1) n |= 1024;
                if(d6() == 1) n |= 2048;
                if(d6() == 1) n |= 4096;

                eEffect = EffectDamageIncrease(d4(),n);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 13:
            {
                int nAmt = Random(50);
                eEffect = EffectDamageReduction(nAmt, GetHitDice(OBJECT_SELF)/3+1,d4());
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 14:
        {
            int nAmt = Random(50);
            eEffect = EffectDamageResistance(GetHitDice(OBJECT_SELF)/3+1,nAmt,d4());
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
        }
        break;
        case 15:
        {
            int nAmt = Random(32);
            eEffect = EffectImmunity(nAmt);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
        }
        break;
        case 16:
            {
            eEffect = EffectInvisibility(1);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;

        case 17:
            {
                eEffect = EffectModifyAttacks(GetHitDice(OBJECT_SELF)/5+1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 18:
            {
                eEffect = EffectMovementSpeedIncrease(Random(100));
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 19:

            {
                eEffect = EffectRegenerate(GetHitDice(OBJECT_SELF)/3+1,6.0);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 20:
            {
                int nSave = Random(3);
                int nType = Random(19);
                eEffect = EffectSavingThrowIncrease(nSave,nType);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;

        case 21:
            {
                int nSpell = Random(1000);
                eEffect = EffectSpellImmunity(nSpell);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
       case 22:
            {
                int nSR = Random(10);
                eEffect = EffectSpellResistanceIncrease(nSR);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 23:

            {

                eEffect = EffectTrueSeeing();
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 24:
            if(GetRacialType(OBJECT_SELF)==RACIAL_TYPE_UNDEAD)
            {
                int nHD = GetHitDice(OBJECT_SELF);
                eEffect = EffectTurnResistanceIncrease(nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
            }
        case 25:
            {

                eEffect = EffectUltravision();
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
        case 26:
            {

                eEffect = EffectSeeInvisible();
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }
            break;
        case 27:
                eEffect = EffectSkillIncrease(Random(27),GetHitDice(OBJECT_SELF));
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        case 28:
                eEffect = EffectSkillIncrease(SKILL_USE_MAGIC_DEVICE,18+GetHitDice(OBJECT_SELF));
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
                break;
        }
    }
}

void Upgrade()
{
    int d = GetLocalInt(GetModule(),"difficulty");

    if(  d > 0 || GetLocalInt(OBJECT_SELF,"bForceLvlUp")==1)
        LevelUp();

    if(d6() == 1)
    {
        effect eEffect = EffectSkillIncrease(SKILL_USE_MAGIC_DEVICE,20+GetHitDice(OBJECT_SELF));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        int i;
        for(i = 0; i < d6(); i++)
        {
            switch(d2())
            {
            case 1: CreateArcaneScroll(OBJECT_SELF,OBJECT_SELF); break;
            case 2: CreateDivineScroll(OBJECT_SELF,OBJECT_SELF); break;
            }
        }
        for(i = 0; i < 3; i++)
        {

            object oitem;
            switch(d3())
            {
            case 1:
            oitem = MMP_GenerateWand();
            SetDroppableFlag(oitem,FALSE);
            break;
            case 2:
            oitem = MMP_GenerateStaff();
            SetDroppableFlag(oitem,FALSE);
            break;
            case 3:
            oitem = MMP_GenerateRod();
            SetDroppableFlag(oitem,FALSE);
            break;
            }
        }

    }


}


void ForceArmor(object o, object oArmor)
{
    // if the object is doing something, have to try and force it to update iut
    if(!GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_CHEST)))
    {
       AssignCommand(o,ClearAllActions(TRUE));
       AssignCommand(o,ActionEquipItem(oArmor,INVENTORY_SLOT_CHEST));
       DelayCommand(1.0,ForceArmor(o,oArmor));
    }
}





int NumAlliesNearby()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,30.0,GetLocation(OBJECT_SELF));
    int n = 0;
    while(GetIsObjectValid(oC))
    {
        if(GetIsFriend(oC)) n++;
        oC = GetNextObjectInShape(SHAPE_SPHERE,30.0,GetLocation(OBJECT_SELF));
    }
    return n;
}


void main()
{

    object sack = OBJECT_SELF;

///////////////////////////////////////////
// Hack for fLootModifier
///////////////////////////////////////////
    float fLootMod = 1.0;
    if(!GetLocalInt(GetModule(),"bUrasRunOnce"))
    {
        SetLocalInt(GetModule(),"bUrasRunOnce",1);
        if(bMunchkin == TRUE)
            fLootMod = 5.0;
        else if(GetLocalFloat(GetModule(),"fLootMod") == 0.0)
            fLootMod = 1.0;
        SetLocalFloat(GetModule(),"fLootMod",fLootMod);
    }



////////////////////////////////////////////
// AI behavior and templates
////////////////////////////////////////////
    if(bMunchkin == FALSE)
    {

        // templates
        int rt = GetRacialType(OBJECT_SELF);
        object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR);

///////////////////////////////
// fixes to OC creatures.
///////////////////////////////
        if(rt == RACIAL_TYPE_GIANT)
            SetLocalInt(OBJECT_SELF,"bGiantKin",TRUE);

        if(FindSubString( GetTag(OBJECT_SELF), "TROLL") != -1)
            SetLocalInt(OBJECT_SELF,"bTrolllike",TRUE);


        // these are mainly to fix things in OC that won't overide.
        if(FindSubString( GetTag(OBJECT_SELF), "MINOGON") != -1)
        {

            object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR);
            itemproperty ip;

            if(!GetIsObjectValid(oSkin))
            {
                oSkin = CreateItemOnObject("mmp_baseskin");
                AssignCommand(OBJECT_SELF,SKIN_SupportEquipSkin(oSkin));
            }

            effect eF = EffectACIncrease(8);

            SetLocalInt(OBJECT_SELF,"DontUpgradeWeapons",1);
            ip = ItemPropertyRegeneration(10);
            IPSafeAddItemProperty(oSkin,ip);
            ip = ItemPropertyBonusSpellResistance(20);
            IPSafeAddItemProperty(oSkin,ip);
            SetLocalInt(OBJECT_SELF,"X2_L_NUMBER_OF_ATTACKS",2);
            SetLocalInt(OBJECT_SELF,"bForceLvlUp",1);
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_minogon");

        }
        if(FindSubString( GetTag(OBJECT_SELF), "HELMED_HORROR") != -1)
        {
            object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR);
            itemproperty ip;
            effect eF = EffectACIncrease(8);

            IPSafeAddItemProperty(oSkin,ip);
            ip = ItemPropertyBonusSpellResistance(20);
            IPSafeAddItemProperty(oSkin,ip);
            SetLocalInt(OBJECT_SELF,"X2_L_NUMBER_OF_ATTACKS",2);
            SetLocalInt(OBJECT_SELF,"bForceLvlUp",1);
        }
        if(FindSubString( GetTag(OBJECT_SELF), "GREYRENDER") != -1)
        {
            SetLocalInt(OBJECT_SELF,"X2_L_NUMBER_OF_ATTACKS",3);
            SetLocalInt(OBJECT_SELF,"bForceLvlUp",1);

            effect eF = EffectDamageResistance(DAMAGE_TYPE_SLASHING,50);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
            eF = EffectDamageResistance(DAMAGE_TYPE_PIERCING,50);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
            eF = EffectDamageResistance(DAMAGE_TYPE_BLUDGEONING,50);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

            eF = EffectTemporaryHitpoints(d12(6));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        }
        if(FindSubString( GetTag(OBJECT_SELF), "GARGOYLE") != -1)
        {
            object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR);

            SetLocalInt(OBJECT_SELF,"X2_L_NUMBER_OF_ATTACKS",3);

            effect eF = EffectACIncrease(8);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
            eF = EffectDamageReduction(50,1);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
            eF = EffectDamageResistance(DAMAGE_TYPE_SLASHING,50);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
            eF = EffectDamageResistance(DAMAGE_TYPE_PIERCING,100);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

            int nHD = GetHitDice(OBJECT_SELF);
            int nEnhance = nHD/5+1;
            object oCW;

            itemproperty ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            ip = ItemPropertyBonusSpellResistance(16);
            IPSafeAddItemProperty(oSkin,ip);

        }
        if(rt == RACIAL_TYPE_UNDEAD && FindSubString(GetTag(OBJECT_SELF),"GHOUL") != -1
            && FindSubString(GetTag(OBJECT_SELF),"GHAST") != -1)
        {
            int nHD = GetHitDice(OBJECT_SELF);
            int nEnhance = nHD/5+1;
            object oCW;

            itemproperty ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            ip = ItemPropertyOnHitCastSpell(IP_CONST_ONHIT_CASTSPELL_PARALYZE_2,GetHitDice(OBJECT_SELF));
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

        }

//////////////////////////////////////
// Templates
//////////////////////////////////////


        if(d10() == 1  && GetStandardFactionReputation(STANDARD_FACTION_HOSTILE) > 10)
        {

            SetLocalInt(OBJECT_SELF,"bForceLvlUp",TRUE);
            //SetLocalInt(OBJECT_SELF,"X2_NAME_RANDOM",1);

            if(IsMagicUser(OBJECT_SELF))
            {
                int lvl = GetCharacterLevel(OBJECT_SELF);
                if(lvl == 1) SetLocalInt(OBJECT_SELF,"bPrestidigator",TRUE);
                else if(lvl < 3) SetLocalInt(OBJECT_SELF,"bEvoker",TRUE);
                else if(lvl < 5) SetLocalInt(OBJECT_SELF,"bConjurer",TRUE);
                else if(lvl < 7) SetLocalInt(OBJECT_SELF,"bTheurgist",TRUE);
                else if(lvl < 9) SetLocalInt(OBJECT_SELF,"bMagician",TRUE);
            }
            else if(rt != RACIAL_TYPE_UNDEAD && rt != RACIAL_TYPE_CONSTRUCT && rt != RACIAL_TYPE_ELEMENTAL)
            {
                int n = Random(16);

                switch(n)
                {
                case 0: SetLocalInt(OBJECT_SELF,"bHalfFiend",TRUE); break;
                case 1: SetLocalInt(OBJECT_SELF,"bHalfAir",TRUE); break;
                case 2: SetLocalInt(OBJECT_SELF,"bHalfEarth",TRUE); break;
                case 3: SetLocalInt(OBJECT_SELF,"bHalfFire",TRUE); break;
                case 4: SetLocalInt(OBJECT_SELF,"bHalfWater",TRUE); break;
                case 5: SetLocalInt(OBJECT_SELF,"bOoze",TRUE); break;
                case 6: SetLocalInt(OBJECT_SELF,"bAberOoze",TRUE); break;
                case 7: SetLocalInt(OBJECT_SELF,"bAberration",TRUE); break;
                case 8: SetLocalInt(OBJECT_SELF,"bDemonic",TRUE); break;
                case 9: SetLocalInt(OBJECT_SELF,"bDemonicAberration",TRUE); break;
                case 10: SetLocalInt(OBJECT_SELF,"bAluDemon",TRUE); break;
                case 11: SetLocalInt(OBJECT_SELF,"bTrolllike",TRUE); break;
                case 12: SetLocalInt(OBJECT_SELF,"bGiantKin",TRUE); break;
                case 13: SetLocalInt(OBJECT_SELF,"bRegenerating",TRUE); break;
                case 14: SetLocalInt(OBJECT_SELF,"bLemorian",TRUE); break;
                case 15: SetLocalInt(OBJECT_SELF,"bBloodedOne",1); break;
                case 16: SetLocalInt(OBJECT_SELF,"bArachnoid",1); break;
                }
            }
            else if(rt == RACIAL_TYPE_UNDEAD)
            {
                switch(Random(14))
                {
                case 0: SetLocalInt(OBJECT_SELF,"bApostate",TRUE); break;
                case 1: SetLocalInt(OBJECT_SELF,"bHeretic",TRUE); break;
                case 2: SetLocalInt(OBJECT_SELF,"bFallen",TRUE); break;
                case 3: SetLocalInt(OBJECT_SELF,"bMorbid",TRUE); break;
                case 4: SetLocalInt(OBJECT_SELF,"bUnholy",TRUE); break;
                case 5: SetLocalInt(OBJECT_SELF,"bOoze",TRUE); break;
                case 6: SetLocalInt(OBJECT_SELF,"bAberOoze",TRUE); break;
                case 7: SetLocalInt(OBJECT_SELF,"bAberration",TRUE); break;
                case 8: SetLocalInt(OBJECT_SELF,"bDemonic",TRUE); break;
                case 9: SetLocalInt(OBJECT_SELF,"bDemonicAberration",TRUE); break;
                case 10: SetLocalInt(OBJECT_SELF,"bAbilityDrain", TRUE); break;
                case 11: SetLocalInt(OBJECT_SELF,"bLifeDrain", TRUE); break;
                case 12: SetLocalInt(OBJECT_SELF,"bWraithLife", TRUE); SetLocalInt(OBJECT_SELF,"X2_L_INCORPOREAL",1); break;
                case 13: SetLocalInt(OBJECT_SELF,"bSpectreLike", TRUE);SetLocalInt(OBJECT_SELF,"X2_L_INCORPOREAL",1); break;
                case 14: SetLocalInt(OBJECT_SELF,"bGhoulish",TRUE); break;

                }
            }
        }
        if(d20() == 1 && GetStandardFactionReputation(STANDARD_FACTION_HOSTILE) > 10)
        {
            SetLocalInt(OBJECT_SELF,"bForceLvlUp",TRUE);
            IncreaseSizeTemplate();
        }


//////////////////////
// Templates and AI
//////////////////////

        effect eCon = EffectSkillIncrease(SKILL_CONCENTRATION,GetHitDice(OBJECT_SELF));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eCon,OBJECT_SELF);

        if(GetLocalInt(OBJECT_SELF,"bTrolllike") == TRUE)
        {
            itemproperty ip = ItemPropertyRegeneration(15);
            IPSafeAddItemProperty(oSkin,ip);
        }
        if(GetLocalInt(OBJECT_SELF,"bRegenerating") == TRUE)
        {
            int nR = GetLocalInt(OBJECT_SELF,"nRegenerate");
            if(nR == 0) nR = d20();
            itemproperty ip = ItemPropertyRegeneration(nR);
            IPSafeAddItemProperty(oSkin,ip);
        }

        if(GetLocalInt(OBJECT_SELF,"bGiantKin") == TRUE)
        {
            effect eEffect = EffectTemporaryHitpoints(d12(8));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,d4(2));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,d4(2));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        }

        if(GetLocalInt(OBJECT_SELF,"bArachnoid") == TRUE)
        {
            effect eEffect;
            itemproperty ip;
            object oCW;
            int nHD = GetHitDice(OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect=EffectSkillIncrease(SKILL_HIDE,4); ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect=EffectSkillIncrease(SKILL_SPOT,6); ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            ip = ItemPropertyOnMonsterHitProperties(IP_CONST_ONHIT_ITEMPOISON,IP_CONST_POISON_1D2_STRDAMAGE);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            eEffect = EffectImmunity(IMMUNITY_TYPE_MIND_SPELLS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            SetName(OBJECT_SELF,"(Arachnoid) " + GetName(OBJECT_SELF));
        }
        else if(GetLocalInt(OBJECT_SELF,"bAberTable") == TRUE || GetLocalInt(OBJECT_SELF,"bAberration") == TRUE)
        {
            int i;
            for(i = 0; i < GetHitDice(OBJECT_SELF); i++)
                MMP_AbberationTable(oSkin);

            object oBite = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            MMP_AbberationCW(oBite);
            object oClaw = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            MMP_AbberationCW(oBite);

            SetName(OBJECT_SELF,"(Aberration) " + GetName(OBJECT_SELF));
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_aberration");
        }
        else if(GetLocalInt(OBJECT_SELF,"bGhoulish")==TRUE)
        {
            int nHD = GetHitDice(OBJECT_SELF);
            int nEnhance = nHD/5+1;
            object oCW;

            itemproperty ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            ip = ItemPropertyOnHitCastSpell(IP_CONST_ONHIT_CASTSPELL_PARALYZE_2,GetHitDice(OBJECT_SELF));
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);
            SetLocalInt(OBJECT_SELF,"X2_L_NUMBER_OF_ATTACKS",3);
        }
        else if(GetLocalInt(OBJECT_SELF,"bAbilityDrain") == TRUE)
        {

            int ability = Random(6);
            itemproperty ip =
                    ItemPropertyOnMonsterHitProperties(
                        IP_CONST_ONHIT_ABILITYDRAIN,
                        ability);

            object oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            int nD = d6();
            switch(nD)
            {
            case 1: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CHARISMA", d6()); break;
            case 2: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_WISDOM", d6()); break;
            case 3: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_DEXTERITY", d6()); break;
            case 4: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_STRENGTH", d6()); break;
            case 5: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CONSTITUTION", d6()); break;
            case 6: SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_INTELLIGENCE", d6()); break;
            }

            switch(nD)
            {
            case 1: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CHARISMA", d6()); break;
            case 2: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_WISDOM", d6()); break;
            case 3: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_DEXTERITY", d6()); break;
            case 4: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_STRENGTH", d6()); break;
            case 5: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CONSTITUTION", d6()); break;
            case 6: SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_INTELLIGENCE", d6()); break;
            }


            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
            SetName(OBJECT_SELF," (Ability-Draining) " + GetName(OBJECT_SELF));
        }
        else if(GetLocalInt(OBJECT_SELF,"bWraithLike") == TRUE)
        {

            int ability = Random(6);
            itemproperty ip =
                    ItemPropertyOnMonsterHitProperties(
                        IP_CONST_ONHIT_ABILITYDRAIN,
                        ability);

            object oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            SetLocalInt(OBJECT_SELF,"bPULSE_ABILITY_DRAIN_CONSTITUTION", d6());
            SetLocalInt(OBJECT_SELF,"bBOLT_ABILITY_DRAIN_CONSTITUTION", d6());



            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
            SetName(OBJECT_SELF," (Wraith-Like) " + GetName(OBJECT_SELF));
        }

        else if(GetLocalInt(OBJECT_SELF,"bLifeDrain") == TRUE)
        {
            int nHD = GetHitDice(OBJECT_SELF);
            int ability = nHD/5+1;
            itemproperty ip =
                    ItemPropertyOnMonsterHitProperties(
                        IP_CONST_ONHIT_LEVELDRAIN,
                        ability);

            object oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            SetLocalInt(OBJECT_SELF,"bPULSE_LEVEL_DRAIN", d6());
            SetLocalInt(OBJECT_SELF,"bBOLT_LEVEL_DRAIN", d6());

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
            SetName(OBJECT_SELF," (Life-Draining) " + GetName(OBJECT_SELF));
        }
        else if(GetLocalInt(OBJECT_SELF,"bSpectreLike") == TRUE)
        {
            int nHD = GetHitDice(OBJECT_SELF);
            int ability = nHD/5+1;
            itemproperty ip =
                    ItemPropertyOnMonsterHitProperties(
                        IP_CONST_ONHIT_LEVELDRAIN,
                        ability);

            object oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            SetLocalInt(OBJECT_SELF,"bPULSE_LEVEL_DRAIN", d6());
            SetLocalInt(OBJECT_SELF,"bBOLT_LEVEL_DRAIN", d6());

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
            SetName(OBJECT_SELF," (Spectral) " + GetName(OBJECT_SELF));

        }
        else if(GetLocalInt(OBJECT_SELF,"bLemorian") == TRUE)
        {
            effect eEffect;
            itemproperty ip;
            object oCW;
            int nHD = GetHitDice(OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            ip = ItemPropertyDarkvision();
            IPSafeAddItemProperty(oSkin,ip);

            int sr = 10 + nHD;
            if(sr > 35) sr = 35;
            eEffect = EffectSpellResistanceIncrease(sr);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectACIncrease(1,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_ACID,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_COLD,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            if( nHD >= 0 && nHD <= 11)
            {
                int nDR = nHD/5+1;
                if(nDR == 6) nDR = nDR+1;
                int nAmt = 5;
                eEffect = EffectDamageReduction(nAmt, nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }


            if( nHD >= 12 && nHD <= 40)
            {
                int nDR = nHD/5+1;
                if(nDR == 6) nDR = nDR+1;
                int nAmt = 10;
                eEffect = EffectDamageReduction(nAmt, nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }


            eEffect = EffectImmunity(IMMUNITY_TYPE_POISON);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int nEnhance = nHD/5+1;

            ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);
            ip = ItemPropertyOnMonsterHitProperties(IP_CONST_ONHIT_ITEMPOISON,IP_CONST_POISON_1D2_STRDAMAGE);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            if(GetHitDice(OBJECT_SELF) >= 1) SetLocalInt(OBJECT_SELF,"bNumSPELL_SCARE",3);
            if(GetHitDice(OBJECT_SELF) >= 3) SetLocalInt(OBJECT_SELF,"bNumSPELL_CHARM_PERSON",3);
            if(GetHitDice(OBJECT_SELF) >= 5) SetLocalInt(OBJECT_SELF,"bNumSPELL_FEAR",1);
            if(GetHitDice(OBJECT_SELF) >= 7) SetLocalInt(OBJECT_SELF,"bNumSPELL_CHARM_MONSTER",3);
            if(GetHitDice(OBJECT_SELF) >= 9) SetLocalInt(OBJECT_SELF,"bNumSPELL_DOMINATE_PERSON",1);
            if(GetHitDice(OBJECT_SELF) >= 11) SetLocalInt(OBJECT_SELF,"bNumSPELL_MASS_CHARM_PERSON",1);
            if(GetHitDice(OBJECT_SELF) >= 13) SetLocalInt(OBJECT_SELF,"bNumSPELL_UNHOLY_AURA",1);
            if(GetHitDice(OBJECT_SELF) >= 15) SetLocalInt(OBJECT_SELF,"bNumSPELL_MASS_CHARM_MONSTER",1);
            if(GetHitDice(OBJECT_SELF) >= 17) SetLocalInt(OBJECT_SELF,"bNumSPELL_SUMMON_CREATURE_IX",1);
            if(GetHitDice(OBJECT_SELF) >= 19) SetLocalInt(OBJECT_SELF,"bNumSPELL_DOMINATE_MONSTER",1);

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
        }
        else if(GetLocalInt(OBJECT_SELF,"bOozeTable") == TRUE || GetLocalInt(OBJECT_SELF,"bOoze") == TRUE)
        {
            int i;
            for(i = 0; i < GetHitDice(OBJECT_SELF); i++) MMP_OozeTable(oSkin);
            if(d6()==1) MMPOOZE_EvardsBlackTentacles(oSkin);
            object oBite = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            MMP_AbberationCW(oBite);
            object oClaw = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            MMP_AbberationCW(oBite);
            SetName(OBJECT_SELF,"(Ooze) " + GetName(OBJECT_SELF));
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_ooze");
        }
        else if(GetLocalInt(OBJECT_SELF,"bAberOozeTable") == TRUE || GetLocalInt(OBJECT_SELF,"bAberOoze") == TRUE)
        {
            int i;
            for(i = 0; i < GetHitDice(OBJECT_SELF)/2+1; i++) MMP_OozeTable(oSkin);
            for(i = 0; i < GetHitDice(OBJECT_SELF)/2+1; i++) MMP_AbberationTable(oSkin);
            if(d6()==1) MMPOOZE_EvardsBlackTentacles(oSkin);
            object oBite = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            MMP_AbberationCW(oBite);
            object oClaw = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            MMP_AbberationCW(oBite);
            SetName(OBJECT_SELF,"(Aberrant-Ooze) " + GetName(OBJECT_SELF));
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_aberooze");
        }

        else if(GetLocalInt(OBJECT_SELF,"bDemonicTable") == TRUE || GetLocalInt(OBJECT_SELF,"bDemonic") == TRUE)
        {
            effect eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int nHD = GetHitDice(OBJECT_SELF);
            int nEnhance = nHD/5+1;
            object oCW;
            itemproperty ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            int nHDc = GetHitDice(OBJECT_SELF)/5+1;
            effect eDR = EffectDamageReduction(5,nHDc);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_ACID,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_FIRE,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_COLD,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

             // needs to enhance natural weapons
            int sR = 10+nHD;
            if(sR > 25) sR = 25;
            eDR = EffectSpellResistanceIncrease(sR);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_demonic");

        }

        else if(GetLocalInt(OBJECT_SELF,"bAberDemonicTable") == TRUE ||
            GetLocalInt(OBJECT_SELF,"bDemonicAberration") == TRUE )
        {
            effect eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

             // needs to enhance natural weapons
            int nHDc = GetHitDice(OBJECT_SELF)/5+1;
            effect eDR = EffectDamageReduction(5,nHDc);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_ACID,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_FIRE,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_COLD,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            int nHD = GetHitDice(OBJECT_SELF);
            int nEnhance = nHD/5+1;
            object oCW;
            itemproperty ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

            int sR = 10+nHD;
            if(sR > 25) sR = 25;
            eDR = EffectSpellResistanceIncrease(sR);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_aludemon");
        }
        // it is twisted by chaos (aberration) and psionic
        else if(GetLocalInt(OBJECT_SELF,"bPsychicTable")==TRUE || GetLocalInt(OBJECT_SELF,"bPsychic")==TRUE)
        {

            int i;
            for(i = 0; i < GetHitDice(OBJECT_SELF); i++) MMP_AbberationTable(oSkin);
            if(d6()==1) MMPOOZE_EvardsBlackTentacles(oSkin);

            object oBite = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            MMP_AbberationCW(oBite);
            object oClaw = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            MMP_AbberationCW(oBite);


            int nPoints= GetHitDice(OBJECT_SELF);
            nPoints = nPoints + GetAbilityModifier(ABILITY_INTELLIGENCE);
            nPoints = nPoints + GetAbilityModifier(ABILITY_WISDOM);
            nPoints = nPoints + GetAbilityModifier(ABILITY_CHARISMA);
            SetLocalInt(OBJECT_SELF,"nPoints",nPoints);
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_psychic");
        }


        // anything possessed, or part evil outsider
        else if(GetLocalInt(OBJECT_SELF,"bAluDemon") == TRUE  )
        {
            effect eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,6);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int nHDc = GetHitDice(OBJECT_SELF)/5+1;
            effect eDR = EffectDamageReduction(5,nHDc);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            int nHD = GetHitDice(OBJECT_SELF);
            int nEnhance = nHD/5+1;
            object oCW;
            itemproperty ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);

\             // needs to enhance natural weapons
            eDR = EffectDamageResistance(DAMAGE_TYPE_ACID,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_FIRE,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectDamageResistance(DAMAGE_TYPE_COLD,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
        }
        else if(GetLocalInt(OBJECT_SELF,"bPsionicTable") == TRUE || GetLocalInt(OBJECT_SELF,"bPsionic") == TRUE)
        {
            int nPoints = GetHitDice(OBJECT_SELF)
                + GetAbilityModifier(ABILITY_INTELLIGENCE)
                + GetAbilityModifier(ABILITY_WISDOM);
            SetLocalInt(OBJECT_SELF,"nPoints",nPoints*GetAbilityModifier(ABILITY_CHARISMA));
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_psionic");
        }

        else if(GetLocalInt(OBJECT_SELF,"bHalfAir") == TRUE )
        {
            effect eEffect;
            eEffect = EffectAbilityIncrease(
                ABILITY_DEXTERITY,
                2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_WISDOM,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            // natural weapons can have cold, electrical, and sonic properties
            int nHD = GetHitDice(OBJECT_SELF);
            effect eDR;
            eDR = EffectACIncrease(1,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            eDR = EffectDamageImmunityIncrease(DAMAGE_TYPE_COLD,100);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectImmunity(IMMUNITY_TYPE_DISEASE);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_halfair");

            SetName(OBJECT_SELF," (Half-Air Elemental) " + GetName(OBJECT_SELF));

        }
        else if(GetLocalInt(OBJECT_SELF,"bHalfEarth") == TRUE)
        {
            effect eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);


            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            // natural weapons can have bludeeon, stun properties

            int nHD = GetHitDice(OBJECT_SELF);
            effect eDR;
            eDR = EffectACIncrease(3,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            eDR = EffectImmunity(IMMUNITY_TYPE_DISEASE);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_halfearth");


            SetName(OBJECT_SELF," (Half-Earth Elemental) " + GetName(OBJECT_SELF));

        }
        else if(GetLocalInt(OBJECT_SELF,"bHalfFire") == TRUE )
        {
            effect eEffect;

            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            // natural weapons have fire, can have aura of fire

            int nHD = GetHitDice(OBJECT_SELF);
            effect eDR;
            eDR = EffectACIncrease(1,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            eDR = EffectDamageImmunityIncrease(DAMAGE_TYPE_FIRE,100);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectImmunity(IMMUNITY_TYPE_DISEASE);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);


            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_halffire");


            SetName(OBJECT_SELF," (Half-Fire Elemental) " + GetName(OBJECT_SELF));

        }
        else if(GetLocalInt(OBJECT_SELF,"bHalfWater") == TRUE)
        {
            effect eEffect;

            eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_WISDOM,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectAbilityIncrease(ABILITY_WISDOM,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            eEffect = EffectTemporaryHitpoints(d12(4));
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            // natural weapons have poison, acid
            int nHD = GetHitDice(OBJECT_SELF);
            effect eDR;
            eDR = EffectACIncrease(1,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            eDR = EffectDamageImmunityIncrease(DAMAGE_TYPE_COLD,100);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectImmunity(IMMUNITY_TYPE_DISEASE);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);
            eDR = EffectImmunity(IMMUNITY_TYPE_POISON);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eDR,OBJECT_SELF);

            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_halfwater");

            SetName(OBJECT_SELF," (Half-Water Elemental) " + GetName(OBJECT_SELF));

        }
        else if(GetLocalInt(OBJECT_SELF,"bCelestial") == TRUE)
        {
            effect eEffect;
            itemproperty ip;
            int nHD = GetHitDice(OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_WISDOM,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectACIncrease(5,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_ACID,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_COLD,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int sr = 10 + nHD;
            if(sr > 32) sr = 32;
            eEffect = EffectSpellResistanceIncrease(sr);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int nEnhance = nHD/5+1;
            object oCW;
            ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);


            if( nHD >= 0 && nHD <= 11)
            {
                int nDR = nHD/5+1;
                if(nDR == 6) nDR = nDR+1;
                int nAmt = 5;
                eEffect = EffectDamageReduction(nAmt, nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }


            if( nHD >= 12 && nHD <= 40)
            {
                int nDR = nHD/5+1;
                if(nDR == 6) nDR = nDR+1;
                int nAmt = 10;
                eEffect = EffectDamageReduction(nAmt, nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }

            ip = ItemPropertyDarkvision(); IPSafeAddItemProperty(oSkin,ip);
            if(GetHitDice(OBJECT_SELF) >= 1) SetLocalInt(OBJECT_SELF,"bNumSPELL_BLESS",1);
            if(GetHitDice(OBJECT_SELF) >= 1) SetLocalInt(OBJECT_SELF,"bNumSPELL_LIGHT",-1);
            if(GetHitDice(OBJECT_SELF) >= 2) SetLocalInt(OBJECT_SELF,"bNumSPELL_PROTECTION_FROM_EVIL",3);
            if(GetHitDice(OBJECT_SELF) >= 3) SetLocalInt(OBJECT_SELF,"bNumSPELL_AID",1);
            if(GetHitDice(OBJECT_SELF) >= 5) SetLocalInt(OBJECT_SELF,"bNumSPELL_CURE_SERIOUS_WOUNDS",1);
            if(GetHitDice(OBJECT_SELF) >= 6) SetLocalInt(OBJECT_SELF,"bNumSPELL_REMOVE_DISEASE",1);
            if(GetHitDice(OBJECT_SELF) >= 15) SetLocalInt(OBJECT_SELF,"bNumSPELL_MASS_CHARM_MONSTER",1);
            if(GetHitDice(OBJECT_SELF) >= 17) SetLocalInt(OBJECT_SELF,"bNumSPELL_SUMMON_MONSTER_IX",1);
            if(GetHitDice(OBJECT_SELF) >= 19) SetLocalInt(OBJECT_SELF,"bNumSPELL_RESSURECTION",1);

            if(GetHitDice(OBJECT_SELF) > 7)
            {
                ip = ItemPropertyBonusFeat(FEAT_SMITE_EVIL);
                IPSafeAddItemProperty(oSkin,ip);
            }
            SetName(OBJECT_SELF,"(Half-Celestial) "+ GetName(OBJECT_SELF));
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
        }
        else if(GetLocalInt(OBJECT_SELF,"bHalfFiend")==TRUE)
        {
            effect eEffect;
            itemproperty ip;
            int nHD = GetHitDice(OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,2);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectACIncrease(5,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_ACID,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_COLD,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,10);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int sr = 10 + nHD;
            if(sr > 32) sr = 32;
            eEffect = EffectSpellResistanceIncrease(sr);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            int nEnhance = nHD/5+1;
            object oCW;
            ip = ItemPropertyEnhancementBonus(nEnhance);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
            IPSafeAddItemProperty(oCW,ip);
            oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
            IPSafeAddItemProperty(oCW,ip);


            if( nHD >= 0 && nHD <= 11)
            {
                int nDR = nHD/5+1;
                if(nDR == 6) nDR = nDR+1;
                int nAmt = 5;
                eEffect = EffectDamageReduction(nAmt, nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }


            if( nHD >= 12 && nHD <= 40)
            {
                int nDR = nHD/5+1;
                if(nDR == 6) nDR = nDR+1;
                int nAmt = 10;
                eEffect = EffectDamageReduction(nAmt, nHD);
                ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            }


            eEffect = EffectImmunity(IMMUNITY_TYPE_POISON);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

            ip = ItemPropertyDarkvision(); IPSafeAddItemProperty(oSkin,ip);
            if(GetHitDice(OBJECT_SELF) >  0) SetLocalInt(OBJECT_SELF,"bSPELL_DARKNESS",3);
            if(GetHitDice(OBJECT_SELF) >= 3) SetLocalInt(OBJECT_SELF,"bSPELL_BANE",1);
            if(GetHitDice(OBJECT_SELF) >= 3) SetLocalInt(OBJECT_SELF,"bSPELL_DOOM",1);
            if(GetHitDice(OBJECT_SELF) >= 7) SetLocalInt(OBJECT_SELF,"bSPELL_POISON",1);
            if(GetHitDice(OBJECT_SELF) >= 8) SetLocalInt(OBJECT_SELF,"bSPELL_CONTAGION",1);
            if(GetHitDice(OBJECT_SELF) >= 9) SetLocalInt(OBJECT_SELF,"bSPELL_CIRCLE_OF_DOOM",1);
            if(GetHitDice(OBJECT_SELF) >= 11) SetLocalInt(OBJECT_SELF,"bSPELL_UNHOLY_AURA",1);
            if(GetHitDice(OBJECT_SELF) >= 13) SetLocalInt(OBJECT_SELF,"bSPELL_MASS_CHARM_MONSTER",1);
            if(GetHitDice(OBJECT_SELF) >= 15) SetLocalInt(OBJECT_SELF,"bSPELL_HORRID_WILTING",1);
            if(GetHitDice(OBJECT_SELF) >= 17) SetLocalInt(OBJECT_SELF,"bSPELL_SUMMON_CREATURE_IX",1);
            if(GetHitDice(OBJECT_SELF) >= 19) SetLocalInt(OBJECT_SELF,"bSPELL_DESTRUCTION",1);

            if(GetHitDice(OBJECT_SELF) > 1)
            {
                ip = ItemPropertyBonusFeat(FEAT_SMITE_GOOD);
                IPSafeAddItemProperty(oSkin,ip);
            }

            SetName(OBJECT_SELF,"(Half-Fiend) "+ GetName(OBJECT_SELF));
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_template");
        }
        else if(GetLocalInt(OBJECT_SELF,"bBloodedOne") == TRUE)
        {
            effect eEffect;
            itemproperty ip;
            object oCW;
            int nHD = GetHitDice(OBJECT_SELF);
            SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_inc_template");
            eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,4);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            eEffect = EffectACIncrease(2,AC_NATURAL_BONUS);
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
            if(GetHitDice(OBJECT_SELF) >= 1) SetLocalInt(oSkin,"bNumSPELL_WAR_CRY",3);
            SetName(OBJECT_SELF,"(Blooded)"+ GetName(OBJECT_SELF));
        }
        else if(GetStandardFactionReputation(STANDARD_FACTION_HOSTILE,OBJECT_SELF) > 50)
        {
            if(d10() == 1)
            {
                RandomTemplate();
                SetName(OBJECT_SELF,"(Mutant) " + GetName(OBJECT_SELF));
            }
        }
        else if(GetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT")=="" && d10()==1)
            TemplateType();


        if(GetLocalInt(OBJECT_SELF,"bMinions")==TRUE)
        {
            ExecuteScript(GetLocalString(OBJECT_SELF,"sMinionScript"),OBJECT_SELF);
        }
        if(GetLocalInt(OBJECT_SELF,"bHenchmen")==TRUE)
        {
            ExecuteScript(GetLocalString(OBJECT_SELF,"sHenchmenScript"),OBJECT_SELF);
        }


        else if(GetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT")=="")
        {

            if(GetIsFighter(OBJECT_SELF))
            {
                string s;
                switch(d8())
                {
                case 1: s = "x2_ai_attackweak"; break;
                case 2: s = "x2_ai_attackstr"; break;
                case 3: s = "x2_ai_atkspellc"; break;
                case 4: s = "x2_ai_atkvuln"; break;
                default: s = "";
                }
                SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT",s);
            }
            else if(GetIsMagicUser(OBJECT_SELF))
            {
                if(GetLocalInt(OBJECT_SELF,"bPrestidigator"))
                {
                    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_prestidiga");
                    SetName(OBJECT_SELF,"(Presitidator) "+ GetName(OBJECT_SELF));
                }
                else if(GetLocalInt(OBJECT_SELF,"bConjurer"))
                {
                    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_conjurer");
                    SetName(OBJECT_SELF,"(Conjurer) "+ GetName(OBJECT_SELF));
                }
                else if(GetLocalInt(OBJECT_SELF,"bEvoker"))
                {
                    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_evoker");
                    SetName(OBJECT_SELF,"(Evoker) "+ GetName(OBJECT_SELF));
                }
                else if(GetLocalInt(OBJECT_SELF,"bTheurgist"))
                {
                    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_theurgist");
                    SetName(OBJECT_SELF,"(Thurgist) "+ GetName(OBJECT_SELF));
                }
                else if(GetLocalInt(OBJECT_SELF,"bMagician"))
                {
                    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_magician");
                    SetName(OBJECT_SELF,"(Magician) "+ GetName(OBJECT_SELF));
                }

                else
                    SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_ai_wizard");
            }

            if(!GetLocalInt(OBJECT_SELF,"bRegenerating"))
            {
                // give all creatures regeneration so they slowly heal
                itemproperty ip = ItemPropertyRegeneration(1);
                IPSafeAddItemProperty(oSkin,ip);
            }

        }

/////////////////////////////
// Default Bioware stuff
/////////////////////////////
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_SEARCH) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_SEARCH);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_AMBIENT_IMMOBILE) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_IMMOBILE_AMBIENT_ANIMATIONS);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_AMBIENT) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_AMBIENT_ANIMATIONS);
    }

    // ***** DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) ***** //

    // * Goes through and sets up which shouts the NPC will listen to.
    // *
    SetListeningPatterns();

    // * Walk among a set of waypoints.
    // * 1. Find waypoints with the tag "WP_" + NPC TAG + "_##" and walk
    // *    among them in order.
    // * 2. If the tag of the Way Point is "POST_" + NPC TAG, stay there
    // *    and return to it after combat.
    //
    // * Optional Parameters:
    // * void WalkWayPoints(int nRun = FALSE, float fPause = 1.0)
    //
    // * If "NW_FLAG_DAY_NIGHT_POSTING" is set above, you can also
    // * create waypoints with the tags "WN_" + NPC Tag + "_##"
    // * and those will be walked at night. (The standard waypoints
    // * will be walked during the day.)
    // * The night "posting" waypoint tag is simply "NIGHT_" + NPC tag.
    WalkWayPoints();

    //* Create a small amount of treasure on the creature
    if ((GetLocalInt(GetModule(), "X2_L_NOTREASURE") == FALSE)  &&
        (GetLocalInt(OBJECT_SELF, "X2_L_NOTREASURE") == FALSE)   )
    {
        CTG_GenerateNPCTreasure(TREASURE_TYPE_MONSTER, OBJECT_SELF);
    }


    // ***** ADD ANY SPECIAL ON-SPAWN CODE HERE ***** //

    // * If Incorporeal, apply changes
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_IS_INCORPOREAL) == TRUE)
    {
        effect eConceal = EffectConcealment(50, MISS_CHANCE_TYPE_NORMAL);
        eConceal = ExtraordinaryEffect(eConceal);
        effect eGhost = EffectCutsceneGhost();
        eGhost = ExtraordinaryEffect(eGhost);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eConceal, OBJECT_SELF);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eGhost, OBJECT_SELF);

    }

    // * Give the create a random name.
    // * If you create a script named x3_name_gen in your module, you can
    // * set the value of the variable X3_S_RANDOM_NAME on OBJECT_SELF inside
    // * the script to override the creature's default name.
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_RANDOMIZE_NAME) == TRUE)
    {

        ExecuteScript("x3_name_gen",OBJECT_SELF);
        string sName = GetLocalString(OBJECT_SELF,"X3_S_RANDOM_NAME");
        if ( sName == "" )
        {
            sName = RandomName();
        }
        SetName(OBJECT_SELF,sName);
    }


////////////////////////////////////////////////
// Treasure - note that talent AI can use this.
///////////////////////////////////////////////

    // the random generator in this game is not uniform at all.
    float fLootChance = 0.5* fLootMod;
    if(fLootChance == 0.0) fLootChance = 0.5;
    if(fLootChance < 0.0) fLootChance = 0.0;

    int dice = Random(10000);
    int iChance = FloatToInt(fLootChance*10000);

    if( (dice <= iChance) && (GetStandardFactionReputation(STANDARD_FACTION_HOSTILE) > 50) )
    {
        if(GetAbilityScore(OBJECT_SELF,ABILITY_INTELLIGENCE) > 3)
        {
            int class = GetClassByPosition(0,OBJECT_SELF);

            if(class == CLASS_TYPE_ASSASSIN) SetLocalInt(sack,"Assassin",TRUE);
            if(class == CLASS_TYPE_BARD) SetLocalInt(sack,"Bard",1);
            if(class == CLASS_TYPE_MONK) SetLocalInt(sack,"Monk",1);
            if(class == CLASS_TYPE_CLERIC) SetLocalInt(sack,"Cleric",1);
            if(class == CLASS_TYPE_FIGHTER)  SetLocalInt(sack,"Fighter",1);
            if(class == CLASS_TYPE_GIANT) SetLocalInt(sack,"Giant",1);
            if(class == CLASS_TYPE_ROGUE) SetLocalInt(sack,"Rogue",1);
            if(class == CLASS_TYPE_WIZARD) SetLocalInt(sack,"Wizard",1);
            if(class == CLASS_TYPE_DRUID) SetLocalInt(sack,"Druid",1);
            if(class == CLASS_TYPE_RANGER) SetLocalInt(sack,"Ranger",1);
            if(class == CLASS_TYPE_PALADIN) SetLocalInt(sack,"Paladin",1);
            if(class == CLASS_TYPE_DRAGON) SetLocalInt(sack,"Dragon",1);
            /*
            if(class == CLASS_TYPE_OUTSIDER) SetLocalInt(sack,"Outsider",1);
            if(class == CLASS_TYPE_ABERRATION) SetLocalInt(sack,"Abberation",1);
            if(class == CLASS_TYPE_UNDEAD) SetLocalInt(sack,"Undead",1);
            if(class == CLASS_TYPE_MAGICAL_BEAST) SetLocalInt(sack,"MagicalBeast",1);
            */
            int rt = GetRacialType(OBJECT_SELF);
            if( rt != RACIAL_TYPE_ANIMAL &&
                rt != RACIAL_TYPE_VERMIN &&
                rt != RACIAL_TYPE_BEAST &&
                rt != RACIAL_TYPE_CONSTRUCT &&
                rt != RACIAL_TYPE_OOZE &&
                rt != RACIAL_TYPE_UNDEAD)
            {
                //SendMessageToPC(GetFirstPC(),"Lutes");
                iChestLevel = GetCharacterLevel(OBJECT_SELF);
                dice = Random(10000);

                // it will just drop socket way too much no matter what I do.
                //if(dice <= iSocketedLootChance)
                //    sd_droploot(OBJECT_SELF,OBJECT_SELF);
                //else
                    Lutes(OBJECT_SELF);
            }
        }
    }

/////////////////////////
// Upgrade and Enhance
//////////////////////////
    if(!bMunchkin)
    {
        if( (GetLocalInt(GetModule(),"difficulty") >= 0 || GetLocalInt(OBJECT_SELF,"bForceLvlUp")==1) )
        {
            if(GetLocalInt(OBJECT_SELF,"bNeverLvlUp")==0)
            {
                EnhanceSkin();
                EnhanceItems();
                Upgrade();
            }
        }

        if( (GetIsMagicUser(OBJECT_SELF) || GetIsCleric(OBJECT_SELF)))
        {
            oObject = OBJECT_SELF;
            iChestLevel = GetCharacterLevel(OBJECT_SELF);
            PersonalSpellBook();
        }
    }

////////////////////////////////////
// Modify Armour and Weapons
////////////////////////////////////
    if(bModifyArmorAndWeapons == TRUE)
    {
        object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST);
        if(GetIsObjectValid(oArmor))
        {
            oArmor = ModifyArmor(oArmor);
            if(GetIsObjectValid(oArmor)) {
                ActionEquipItem(oArmor,INVENTORY_SLOT_CHEST);
                DelayCommand(0.1,ForceArmor(OBJECT_SELF,oArmor));
            }
        }

        object oWeapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND);
        if(GetIsObjectValid(oWeapon) && FindSubString(GetTag(oWeapon),"nw_it_cre") == -1)
        {
            object oNew = ModifyWeapon(oWeapon);
            if(GetIsObjectValid(oNew))
                AssignCommand(OBJECT_SELF,ActionEquipItem(oNew,INVENTORY_SLOT_RIGHTHAND));
        }
        if(d20() == 1) IncreaseWeaponSize(oWeapon);

        oWeapon = GetItemInSlot(INVENTORY_SLOT_LEFTHAND);
        if(GetIsObjectValid(oWeapon))
        {
            if(GetMeleeWeapon(oWeapon))
            {
                oWeapon = ModifyWeapon(oWeapon);
                if(GetIsObjectValid(oWeapon))
                    AssignCommand(OBJECT_SELF,ActionEquipItem(oWeapon,INVENTORY_SLOT_LEFTHAND));
            }
            else if(GetBaseItemType(oWeapon) == BASE_ITEM_SMALLSHIELD ||
                    GetBaseItemType(oWeapon) == BASE_ITEM_LARGESHIELD ||
                    GetBaseItemType(oWeapon) == BASE_ITEM_TOWERSHIELD)
            {
                oWeapon = ModifyShield(oWeapon);
                if(GetIsObjectValid(oWeapon))
                    AssignCommand(OBJECT_SELF,ActionEquipItem(oWeapon,INVENTORY_SLOT_LEFTHAND));
            }

        }

    }



        SetSpawnInCondition(NW_FLAG_FAST_BUFF_ENEMY);
        SetSpawnInCondition(NW_FLAG_END_COMBAT_ROUND_EVENT);
        SetSpawnInCondition(NW_FLAG_SPELL_CAST_AT_EVENT);
        SetSpawnInCondition(NW_FLAG_PERCIEVE_EVENT);

    }


}


