// Enchant Armor, Shields, Helmets

void EnchantArmor(struct sItemInfo ItemInfo)
{
    int    iTotalCost=0;
    int    iPoints=iChestLevel;
    struct sEnchantments Enchants;
    int    ticker = 0;
    int    tier=1;

    int level =  iChestLevel;
    if(d10() == 1) iPoints += d4();
    if(d20() == 1) iPoints += d4(2);

    if(iChestLevel <= 3) tier=1;
    else if(iChestLevel > 3 && iChestLevel < 10)   tier=2;
    else if(iChestLevel > 10 && iChestLevel < 20)  tier=3;
    else if(iChestLevel > 20 && iChestLevel < 30)  tier=4;
    else if(iChestLevel > 30 && iChestLevel < 40) tier=5;
    else tier=6;


    Enchants.oItem      = ItemInfo.oItem;
    Enchants.sName      = ItemInfo.sName;

    if(Enchants.sName == "")
    {
        switch(GetBaseItemType(Enchants.oItem))
        {
        case BASE_ITEM_ARMOR: Enchants.sName = "Armor"; break;
        case BASE_ITEM_HELMET: Enchants.sName = "Helmet"; break;
        case BASE_ITEM_LARGESHIELD: Enchants.sName = "Large Shield"; break;
        case BASE_ITEM_SMALLSHIELD: Enchants.sName = "Small Shield"; break;
        case BASE_ITEM_TOWERSHIELD: Enchants.sName = "Tower Shield"; break;
        }
    }

    Enchants.iAlign = ALL;
    Enchants.iRace = -1;
    Enchants.iOnHitDC=-1;
    Enchants.iSpellResistance=-1;

/*
    if(tier > 3 && d100() >= SPECIAL)
    {
        Enchants.iPoints = iPoints;
        Enchants         = EnchantSpecialWeapon(Enchants);
        iTotalCost       = Enchants.iValue;
    }
    else
*/
    {
        int bonus = 0;

        if(d100() > 95)
        {
            bonus = 1;
        }

        int base = (tier-1);

        if( base < 0 ) base = 0;




        Enchants.iACBonus = base+bonus;

        iTotalCost += base*3;
        iPoints    -= base*3;

        if(d100() > 95)
            iPoints += d4(tier);

        int cost   = iTotalCost;
        int points = iPoints;
        Enchants.iPoints = iPoints;
        while(points > 0)
        {
            int iRoll = FloatToInt(IntToFloat(Random(17000))/1000.0);

            Enchants.iValue = 0;

            switch(iRoll)
            {
            case 0: Enchants = ImbueACBonus(Enchants); break;
            case 1: Enchants = ImbueArcaneSpellFailureDecrease(Enchants); break;
            case 2: Enchants = ImbueSaveBonus(Enchants);break;
            case 3: Enchants = ImbueACBonus(Enchants); break;
            case 4: Enchants = ImbueSaveThrowBonus(Enchants);  break;
            case 5: Enchants = ImbueFreeAction(Enchants);  break;
            case 6: Enchants = ImbueBonusSpellSlot(Enchants); break;
            case 7: Enchants = ImbueSpellResistance(Enchants);break;
            case 8: Enchants = ImbueACBonus(Enchants); break;
            case 9: Enchants = ImbueAbility(Enchants);break;
            case 10: Enchants = ImbueDamageImmunity(Enchants); break;
            case 11: Enchants = ImbueDamageReduction(Enchants); break;
            case 12: Enchants = ImbueDamageResistance(Enchants); break;
            case 13: Enchants = ImbueImprovedEvasion(Enchants); break;
            case 14: Enchants = ImbueCastSpell(Enchants); break;
            case 15:
            default:
                Enchants = ImbueACBonus(Enchants); break;
            }
            if(Enchants.iValue > 0)
            {
                ticker = 0;
                points -= Enchants.iValue;
                cost   += Enchants.iValue;
            }
            else ticker = ticker +1;

            // since EE has extended the amount of loops you can loop, this alsmot always works now.
            if(ticker > 250) break;
        }
        iTotalCost = cost;
    }
    if(iTotalCost > 0)
    {
        Enchants.iTotalCost = iTotalCost;
        ApplyEnchantments(Enchants);
        SetName(Enchants.oItem, "Enchanted " + ItemInfo.sName);
    }
    iChestLevel = level;



}

object ModifyArmor(object oItem)
{
    int color1=Random(63);
    int color2=Random(63);
    int color3=Random(63);

    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_CLOTH1,color1);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_CLOTH2,color2);
    // fashion power, gaudy
    if(d10()==1) {
        color1 = Random(63);
        color2 = Random(63);
    }
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_LEATHER1,color1);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_LEATHER2,color2);
    if(d10()==1) {
        color1 = Random(63);
        color2 = Random(63);
    }

    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_METAL1,color1);
    oItem=    IPDyeArmor(oItem,ITEM_APPR_ARMOR_COLOR_METAL2,color2);

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

    // chance it will be a robe.
    if(GetItemACValue(oItem) == 0 && d6() < 2)
    {
        oItem=    IPGetModifiedArmor(oItem,ITEM_APPR_ARMOR_MODEL_ROBE,X2_IP_ARMORTYPE_RANDOM,TRUE);
    }
    return oItem;
}


void GenerateArmor()
{
    int iRoll = d12();
    struct sItemInfo ItemInfo;
    switch(iRoll)
    {
    case 1: ItemInfo = GenerateBandedMail(); break;
    case 2: ItemInfo = GenerateFullPlate(); break;
    case 3: ItemInfo = GenerateHalfPlate(); break;
    case 4: ItemInfo = GenerateSplintMail(); break;
    case 5: ItemInfo = GenerateLeather(); break;
    case 6: ItemInfo = GenerateStuddedLeather(); break;
    case 7: ItemInfo = GenerateScaleMail(); break;
    case 8: ItemInfo = GenerateBreastPlate(); break;
    case 9: ItemInfo = GenerateHideArmor(); break;
    case 10: ItemInfo = GenerateChainShirt(); break;
    case 11: ItemInfo = GenerateClothing(); break;
    case 12: ItemInfo = GenerateChainMail(); break;
    }

    ItemInfo.oItem = CreateItemOnObject(ItemInfo.sBluePrint,oObject);
    if( !GetIsObjectValid(ItemInfo.oItem) )
    {
        PrintString("Create Armor " + ItemInfo.sName + " bp="+ItemInfo.sBluePrint+" failed.");
        return;
    }

    ItemInfo.oItem = ModifyArmor(ItemInfo.oItem);

    EnchantArmor(ItemInfo);

}

object ModifyShield(object oShield)
{
    object oldItem=oShield;
    object oItem= CopyItemAndModify(oShield, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));
    if(GetIsObjectValid(oItem))
    {
        AssignCommand(oObject,ActionEquipItem(oItem,INVENTORY_SLOT_LEFTHAND));
        DestroyObject(oldItem);
    }
    return oItem;
}

void GenerateShield()
{
    int iRoll = d3();
    struct sItemInfo ItemInfo;

    switch(iRoll)
    {
    case 1: ItemInfo = GenerateSmallShield(); break;
    case 2: ItemInfo = GenerateLargeShield(); break;
    case 3: ItemInfo = GenerateTowerShield(); break;
    }


    ItemInfo.oItem = CreateItemOnObject(ItemInfo.sBluePrint,oObject);
    if( !GetIsObjectValid(ItemInfo.oItem) )
    {
        PrintString("Create Shield " + ItemInfo.sName + " bp="+ItemInfo.sBluePrint+" failed.");
        return;
    }


    ItemInfo.oItem= ModifyShield(ItemInfo.oItem);


    EnchantArmor(ItemInfo);

}


void GenerateHelmet()
{
    struct sItemInfo ItemInfo;
    ItemInfo.sName = "Helmet";
    ItemInfo.sBluePrint = "lutes_helm00"+IntToString(Random(9)+1);

    ItemInfo.oItem = CreateItemOnObject(ItemInfo.sBluePrint, oObject);
    if( !GetIsObjectValid(ItemInfo.oItem) )
    {
        PrintString("Create Helmet " + ItemInfo.sName + " bp="+ItemInfo.sBluePrint+" failed.");
        return;
    }


    object oldItem=ItemInfo.oItem;
    ItemInfo.oItem= CopyItemAndModify(ItemInfo.oItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(10));
    if(GetIsObjectValid(ItemInfo.oItem)) DestroyObject(oldItem);

    EnchantArmor(ItemInfo);

}

