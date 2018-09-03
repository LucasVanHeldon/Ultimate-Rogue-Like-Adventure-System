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


