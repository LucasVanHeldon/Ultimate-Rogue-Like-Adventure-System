// This is alpha everyting in here is subject to and will change.

#include "x0_i0_anims"
#include "x0_i0_treasure"

#include "x2_inc_switches"
#include "lutes"
#include "x3_inc_skin"
#include "inc_ai"
#include "mmp_lutes"

#include "inc_mmpaberr"
#include "inc_mmpmrbd"
#include "inc_mmpooze"
#include "x2_i0_spells"

int bOC = FALSE;
void RunOnce(object o)
{
    int isOk = FALSE;
    string s = GetName(GetArea(OBJECT_SELF));

    // spawn the difficulty wizard into the module
    if(FindSubString(s,"Kendrack") != -1)
    {
        if(!GetLocalInt(GetModule(),"bDiffWiz"))
        {
            SetLocalInt(GetModule(),"bDiffWiz",1);
            CreateObject(OBJECT_TYPE_CREATURE,"lomendir",GetLocation(GetWaypointByTag("NW_HENCHMAN_BAR")));
        }
    }
    else if(FindSubString(s,"Hall of Justice") != -1)
    {
        if(!GetLocalInt(GetModule(),"bDiffWiz"))
        {
            SetLocalInt(GetModule(),"bDiffWiz",1);
            // there isn't really a great spot for him in this area...
            CreateObject(OBJECT_TYPE_CREATURE,"lomendir",GetLocation(GetWaypointByTag("NIGHT_M1Q1ACitizen01")));
        }
    }
    else if(FindSubString(s,"Ritual Chamber") != -1)
    {
        if(!GetLocalInt(GetModule(),"bDiffWiz"))
        {
            SetLocalInt(GetModule(),"bDiffWiz",1);
            CreateObject(OBJECT_TYPE_CREATURE,"lomendir",GetLocation(GetWaypointByTag("NW_HENCHMAN_BAR")));
        }
    }

    // check port llast, and generally don't spawn in houses and inns
    if(FindSubString(s,"House")==-1 &&
       FindSubString(s,"Barn") == -1 &&
       FindSubString(s,"Port") == -1 &&
       FindSubString(s,"Llast") == -1 &&
       FindSubString(s,"Jax") == -1 &&
       FindSubString(s,"Inn") == -1 &&
       FindSubString(s,"Tavern") == -1 &&
       // at this moment no random encounters in chapter 1
       FindSubString(s,"City Core") == -1 &&
       FindSubString(s,"Blacklake") == -1 &&
       FindSubString(s,"Docks") == -1 &&
       FindSubString(s,"Peninsula") == -1 &&
       // Don't let them spawn in Lord Nasher's place in 1e
       FindSubString(s,"Ritual Chamber") == -1) isOk = TRUE;

    if(isOk)
    {
        CreateObject(OBJECT_TYPE_PLACEABLE,"randomencounters",GetLocation(o));
    }
    SetLocalInt(GetArea(o),"bRunOnce",1);

}

int IsAberration(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_ABERRATION)
            return TRUE;
    }
    return FALSE;
}

int IsFighter(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_FIGHTER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_PALADIN ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_RANGER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_MONK ||
           // don't know, if should include this guy or not.
           GetClassByPosition(i,oTarget) == CLASS_TYPE_CLERIC)
            return TRUE;
    }
    return FALSE;
}

int IsRogue(object oTarget)
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

int IsMagicUser(object oTarget)
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

int IsCleric(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_CLERIC)
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
                {
                    SendMessageToPC(GetFirstPC(),GetName(OBJECT_SELF)+" failed to lvl up");
                    break;
                }
    }

}

object ModifyArmor(object oItem)
{
    int color1=Random(64);
    int color2=Random(64);
    int color3=Random(64);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_CLOTH1,color1);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_CLOTH2,color2);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_LEATHER1,color1);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_LEATHER2,color2);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_METAL1,color1);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_METAL2,color2);

    if(GetItemACValue(oItem) > 0)
    {
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LBICEP,X2_IP_ARMORTYPE_RANDOM,TRUE);
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LFOOT,X2_IP_ARMORTYPE_RANDOM,TRUE);
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LFOREARM,X2_IP_ARMORTYPE_RANDOM,TRUE);
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LHAND,X2_IP_ARMORTYPE_RANDOM,TRUE);
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LSHIN,X2_IP_ARMORTYPE_RANDOM,TRUE);
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LSHOULDER,X2_IP_ARMORTYPE_RANDOM,TRUE);
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_LTHIGH,X2_IP_ARMORTYPE_RANDOM,TRUE);

        int nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LTHIGH);
        object oOld = oItem;
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RTHIGH,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LBICEP);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RBICEP,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LFOOT);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RFOOT,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LFOREARM);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RFOREARM,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LHAND);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RHAND,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LSHIN);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RSHIN,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LSHOULDER);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RSHOULDER,nPart);
        DestroyObject(oOld);

        oOld = oItem;
        nPart = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_LTHIGH);
        oItem= CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL ,ITEM_APPR_ARMOR_MODEL_RTHIGH,nPart);
        DestroyObject(oOld);


        //oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_TORSO,X2_IP_ARMORTYPE_RANDOM,TRUE);
        //oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_ROBE,X2_IP_ARMORTYPE_RANDOM,TRUE);
        //oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_BELT,X2_IP_ARMORTYPE_RANDOM,TRUE);
        //oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_NECK,X2_IP_ARMORTYPE_RANDOM,TRUE);
        //oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_PELVIS,X2_IP_ARMORTYPE_RANDOM,TRUE);
    }
    else
    {
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_ROBE,X2_IP_ARMORTYPE_RANDOM,TRUE);
    }
    return oItem;
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
        ip = ItemPropertyDamageImmunity(IP_CONST_DAMAGETYPE_BLUDGEONING,4);
        IPSafeAddItemProperty(oSkin,ip);
        ip = ItemPropertyDamageImmunity(IP_CONST_DAMAGETYPE_PIERCING,4);
        IPSafeAddItemProperty(oSkin,ip);
        int nRed = GetHitDice(OBJECT_SELF)/4;
        int soak = GetHitDice(OBJECT_SELF)/4+1;
        ip = ItemPropertyDamageReduction(nRed,soak);
        IPSafeAddItemProperty(oSkin,ip);
    }

    struct sItemInfo ItemInfo;
    struct sEnchantments Enchants;
    oObject = OBJECT_SELF;
    ItemInfo.oItem = oSkin;
    EnchantArmor(ItemInfo);
}

void EnhanceItems()
{
    int n = d6();
    int i;

    if(IsMagicUser(OBJECT_SELF) || IsCleric(OBJECT_SELF) || IsFighter(OBJECT_SELF) || IsRogue(OBJECT_SELF))
    {
        object oRing =MMP_GenerateRing();
        AssignCommand(OBJECT_SELF,ActionEquipItem(oRing,INVENTORY_SLOT_RIGHTRING));
        SetDroppableFlag(oRing,FALSE);
        oRing = MMP_GenerateRing();
        AssignCommand(OBJECT_SELF,ActionEquipItem(oRing,INVENTORY_SLOT_LEFTRING));
        SetDroppableFlag(oRing,FALSE);
        object oAmulet = MMP_GenerateAmulet();
        AssignCommand(OBJECT_SELF,ActionEquipItem(oAmulet,INVENTORY_SLOT_NECK));
        SetDroppableFlag(oAmulet,FALSE);
    }

    object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST);
    struct sItemInfo iteminfo;
    if(GetIsObjectValid(oArmor))
    {
        iteminfo.oItem = oArmor;
        iteminfo.sBluePrint = GetResRef(oArmor);
        EnchantArmor(iteminfo);
    }


    oArmor = GetItemInSlot(INVENTORY_SLOT_LEFTHAND);

    int iBase = GetBaseItemType(oArmor);
    if(GetIsObjectValid(oArmor) && (iBase == BASE_ITEM_SMALLSHIELD || iBase == BASE_ITEM_LARGESHIELD || iBase==BASE_ITEM_TOWERSHIELD))
    {
        iteminfo.oItem = oArmor;
        iteminfo.sBluePrint = GetResRef(oArmor);
        EnchantArmor(iteminfo);
    }
    object oWeapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND);

    if(GetIsObjectValid(oWeapon))
    {
        iteminfo.oItem = oWeapon;
        iteminfo.sBluePrint = GetResRef(oWeapon);
        if(!GetWeaponRanged(oWeapon))
            EnchantWeapon(iteminfo);
        else
            EnchantRangedWeapon(iteminfo);
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
    }

    if(IsMagicUser(OBJECT_SELF))
    {
        int i;
        for(i = 0; i < d4(); i++)
            CreateArcaneScroll(OBJECT_SELF,OBJECT_SELF);
        for(i = 0; i < d4(); i++)
            CreatePotion(OBJECT_SELF,OBJECT_SELF);
    }
    if(IsCleric(OBJECT_SELF))
    {
        int i;
        for(i = 0; i < d4(); i++)
            CreateDivineScroll(OBJECT_SELF,OBJECT_SELF);
        for(i = 0; i < d4(); i++)
            CreatePotion(OBJECT_SELF,OBJECT_SELF);

    }
}


void UpdateSizeBonusIncr(int size)
{
    effect eF;
    switch(size)
    {
    // tiny ot small
    case 2:
        eF = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_STRENGTH,4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectAttackDecrease(2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectDamageIncrease(1);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        SetName(OBJECT_SELF,"Small " + GetName(OBJECT_SELF));

        break;
      // small to medium
    case 3:
        eF = EffectAbilityDecrease(ABILITY_DEXTERITY,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_STRENGTH,4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        eF = EffectAbilityIncrease(ABILITY_CONSTITUTION,2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);

        eF = EffectDamageIncrease(2);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        SetName(OBJECT_SELF,"Medium " + GetName(OBJECT_SELF));
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

        eF = EffectDamageIncrease(4);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        SetName(OBJECT_SELF,"Large " + GetName(OBJECT_SELF));
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

        eF = EffectDamageIncrease(8);
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eF,OBJECT_SELF);
        SetName(OBJECT_SELF,"Large " + GetName(OBJECT_SELF));
        break;
    }
}

void IncreaseSizeTemplate()
{
    int size = GetCreatureSize(OBJECT_SELF);
    if(size == 0) return;
    int inc_dec = d2();

    // only increase size for now.
    size = size + 1;

    float scale = 2.0;
    float f = SetObjectVisualTransform(OBJECT_SELF, OBJECT_VISUAL_TRANSFORM_SCALE,1.0);
    float n =SetObjectVisualTransform(OBJECT_SELF, OBJECT_VISUAL_TRANSFORM_SCALE,scale);
    if( n != f )
    {
        UpdateSizeBonusIncr(size);
    }
}

void IncreaseWeaponSize(object oWeapon)
{
    float scale = 1.0 + IntToFloat(Random(1000))/2000.0;
    float n =SetObjectVisualTransform(oWeapon, OBJECT_VISUAL_TRANSFORM_SCALE,scale);
}

void Upgrade()
{
    int d = GetLocalInt(GetModule(),"diffulty");

    if(  d > 0 || GetLocalInt(OBJECT_SELF,"bForceLvlUp")==1)
        LevelUp();

    /*
    if( (d == 0 && d20()==1) || (d == 1 && d10() == 1) || (d==2 && d6()==1) )
        TemplateGenerator();
    */

    if( (d == 0 && d20()==1) || (d==1 && d10()==1) || (d==2 && d6()==1) )
    {
        effect eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectAbilityIncrease(ABILITY_WISDOM,d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectTemporaryHitpoints(d12(d3()));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectACIncrease(d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        eEffect = EffectAttackIncrease(d4());
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);

        if(GetStandardFactionReputation(STANDARD_FACTION_HOSTILE,OBJECT_SELF) > 75)
        {
            if(GetStringLeft(GetName(OBJECT_SELF),8) == "Champion")
                SetName(OBJECT_SELF,"Super " + GetName(OBJECT_SELF));
            else
                SetName(OBJECT_SELF,"Elite " + GetName(OBJECT_SELF));
        }



    }



    /*
    if(d6() == 1)
    {
        if(!IsMagicUser(OBJECT_SELF) )
        {
            int n = GetHitDice(OBJECT_SELF);
            if(n < 3) { SetLocalInt(OBJECT_SELF,"nTemplate",1); }
            else if(n < 7) { SetLocalInt(OBJECT_SELF,"nTemplate",2); }
            else if(n < 12) { SetLocalInt(OBJECT_SELF,"nTemplate",3); }
            else if(n < 15) { SetLocalInt(OBJECT_SELF,"nTemplate",4); }
            else { SetLocalInt(OBJECT_SELF,"nTemplate",5); }
        }

        else
        {
            int n = 6+Random(14);
            SetLocalInt(OBJECT_SELF,"nTemplate",n);
        }
    }
    */
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

object ModifyWeapon(object oWeapon)
{

    object oItem = oWeapon;
    oItem=    IPGetModifiedWeapon(oItem,ITEM_APPR_WEAPON_COLOR_BOTTOM,X2_IP_ARMORTYPE_RANDOM,TRUE);
    oItem=    IPGetModifiedWeapon(oItem,ITEM_APPR_WEAPON_COLOR_TOP,X2_IP_ARMORTYPE_RANDOM,TRUE);
    oItem=    IPGetModifiedWeapon(oItem,ITEM_APPR_WEAPON_MODEL_BOTTOM,X2_IP_ARMORTYPE_RANDOM,TRUE);
    oItem=    IPGetModifiedWeapon(oItem,ITEM_APPR_WEAPON_MODEL_MIDDLE,X2_IP_ARMORTYPE_RANDOM,TRUE);
    oItem=    IPGetModifiedWeapon(oItem,ITEM_APPR_WEAPON_MODEL_TOP,X2_IP_ARMORTYPE_RANDOM,TRUE);

    object o = CopyItem(oItem,oObject);
    DestroyObject(oItem);
    oItem = o;
    return oItem;
}

object ModifyShield(object oShield)
{
    object oldItem=oShield;
    object oItem= CopyItemAndModify(oShield, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));
    if(GetIsObjectValid(oItem)) DestroyObject(oldItem);
    return oItem;
}

void main()
{

    object sack = OBJECT_SELF;

    // only make hostiles NPCs
    // eventually will work out a more meaningful probability then 'd6()==1'
    if(d6() == 1 && GetStandardFactionReputation(STANDARD_FACTION_HOSTILE) == 100)
    {
        SetLocalInt(OBJECT_SELF,"bForceLvlUp",1);
        SetLocalInt(OBJECT_SELF,"X2_NAME_RANDOM",1);
    }

    /* Creature size templates need alot of work.
    if(d6() == 1)
    {
        IncreaseSizeTemplate();
    }
    */

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




    // * Fire User Defined Event 1001 in the OnHeartbeat
    // *
    // SetSpawnInCondition(NW_FLAG_HEARTBEAT_EVENT);

    // * Fire User Defined Event 1002
    // *
    // SetSpawnInCondition(NW_FLAG_PERCIEVE_EVENT);

    // * Fire User Defined Event 1005
    // *
    // SetSpawnInCondition(NW_FLAG_ATTACK_EVENT);

    // * Fire User Defined Event 1006
    // *
    // SetSpawnInCondition(NW_FLAG_DAMAGED_EVENT);

    // * Fire User Defined Event 1008
    // *
    // SetSpawnInCondition(NW_FLAG_DISTURBED_EVENT);

    // * Fire User Defined Event 1003
    // *
    // SetSpawnInCondition(NW_FLAG_END_COMBAT_ROUND_EVENT);

    // * Fire User Defined Event 1004
    // *
    // SetSpawnInCondition(NW_FLAG_ON_DIALOGUE_EVENT);



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

        //SetName(OBJECT_SELF,RandomName(NAME_FIRST_HUMAN_MALE));
    }




    if(  GetStandardFactionReputation(STANDARD_FACTION_HOSTILE) > 50 )
    {
        if(GetAbilityScore(OBJECT_SELF,ABILITY_INTELLIGENCE) > 5)
        {
            int class = GetClassByPosition(0,OBJECT_SELF);

            if(class == CLASS_TYPE_ASSASSIN) SetLocalInt(sack,"Assassin",TRUE);
            if(class == CLASS_TYPE_BARD) SetLocalInt(sack,"Bard",1);
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
                rt != RACIAL_TYPE_OOZE )
            {
                //SendMessageToPC(GetFirstPC(),"Lutes");
                iChestLevel = GetCharacterLevel(OBJECT_SELF);
                Lutes(OBJECT_SELF);
            }
        }


        if(GetLocalInt(GetModule(),"difficulty") >= 0 || GetLocalInt(OBJECT_SELF,"bForceLvlUp")==1)
        {
            if(GetLocalInt(OBJECT_SELF,"bNeverLvlUp")==0)
            {
                EnhanceSkin();
                EnhanceItems();
                Upgrade();
            }
        }
    }
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
    if(GetIsObjectValid(oWeapon))
    {
        oWeapon = ModifyWeapon(oWeapon);
        if(GetIsObjectValid(oWeapon))
            ActionEquipItem(oWeapon,INVENTORY_SLOT_RIGHTHAND);
    }
    if(d20() == 1) IncreaseWeaponSize(oWeapon);

    oWeapon = GetItemInSlot(INVENTORY_SLOT_LEFTHAND);
    if(GetIsObjectValid(oWeapon))
    {
        if(GetMeleeWeapon(oWeapon))
        {
            oWeapon = ModifyWeapon(oWeapon);
            if(GetIsObjectValid(oWeapon))
                ActionEquipItem(oWeapon,INVENTORY_SLOT_LEFTHAND);
        }
        else if(GetBaseItemType(oWeapon) == BASE_ITEM_SMALLSHIELD ||
                GetBaseItemType(oWeapon) == BASE_ITEM_LARGESHIELD ||
                GetBaseItemType(oWeapon) == BASE_ITEM_TOWERSHIELD)
        {
            oWeapon = ModifyShield(oWeapon);
            if(GetIsObjectValid(oWeapon))
                ActionEquipItem(oWeapon,INVENTORY_SLOT_LEFTHAND);
        }

    }

    SetSpawnInCondition(NW_FLAG_FAST_BUFF_ENEMY);
    SetSpawnInCondition(NW_FLAG_END_COMBAT_ROUND_EVENT);
    SetSpawnInCondition(NW_FLAG_SPELL_CAST_AT_EVENT);
    SetSpawnInCondition(NW_FLAG_PERCIEVE_EVENT);

    if(bOC==1)
    {
        if(GetLocalInt(GetArea(OBJECT_SELF),"bRunOnce")==0)
            DelayCommand(0.1,RunOnce(OBJECT_SELF));

        // correct the names of objects which have their name in cep260.tlk (can't inject it)
        if(GetTag(OBJECT_SELF) == "ZEP_OWLBEAR")
            SetName(OBJECT_SELF,"Owlbear");
    }

}


