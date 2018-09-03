// Rings, Amulets, all items must be included after
// will imbue any item but weapons and armor have their own functions.
void EnchantItem(struct sEnchantments Enchants)
{
    int iPoints=iChestLevel,iTotalCost=0;
    int    ticker = 0;
    int    tier = 0;
    int level =  iChestLevel;

    if(d6() == 1) iPoints += d4();
    if(d20() == 1) iPoints += d4(2);

    int cost   = iTotalCost;
    int points = iPoints;

    Enchants.iPoints = iPoints;

    while(points > 0)
    {
        Enchants.iValue = 0;
        int iRoll = FloatToInt(IntToFloat(Random(16000))/1000.0);
        //PrintString("Roll="+IntToString(iRoll));

        // todo: cast spell, skills, feats
        switch(iRoll)
        {
        case 0: Enchants  = ImbueACBonus(Enchants); break;
        case 1: Enchants  = ImbueSaveThrowBonus(Enchants);  break;
        case 2: Enchants  = ImbueFreeAction(Enchants);  break;
        case 3: Enchants  = ImbueRegeneration(Enchants); break;
        case 4: Enchants  = ImbueBonusSpellSlot(Enchants); break;
        case 5: Enchants  = ImbueSpellResistance(Enchants);break;
        case 6: Enchants  = ImbueSaveBonus(Enchants);break;
        case 7: Enchants  = ImbueAbility(Enchants);break;
        case 8: Enchants  = ImbueACBonus(Enchants); break;
        case 9: Enchants  = ImbueDamageImmunity(Enchants); break;
        case 10: Enchants = ImbueDamageReduction(Enchants); break;
        case 11: Enchants = ImbueDamageResistance(Enchants); break;
        case 12: Enchants = ImbueImprovedEvasion(Enchants); break;
        case 13: Enchants = ImbueCastSpell(Enchants); break;
        case 14: Enchants = ImbueSkill(Enchants); break;
        default:
        case 15: Enchants = ImbueFeat(Enchants); break;
        }

       if(Enchants.iValue > 0)
       {
            ticker = 0;
            points -= Enchants.iValue;
            cost   += Enchants.iValue;
        }
       else ticker = ticker +1;


        if(ticker > 250) break;
    }
    iTotalCost = cost;
    if(iTotalCost > 0)
    {
        Enchants.iTotalCost = iTotalCost;
        ApplyEnchantments(Enchants);
        SetName(Enchants.oItem,Enchants.sName);
    }


}

void GenerateRing()
{
    string sRing = "lutes_ring0";
    int n = Random(10)+1;
    if( n < 10) sRing = sRing + "0" + IntToString(n);
    else sRing = sRing + IntToString(n);
    object oRing = CreateItemOnObject(sRing,oObject,1);
    SetIdentified(oRing,bIdentified);
    struct sEnchantments Enchants;

    object oldItem=oRing;
    oRing = OBJECT_INVALID;
    oRing= CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(10));
    if(GetIsObjectValid(oRing)) DestroyObject(oldItem);

    Enchants.oItem = oRing;
    Enchants.sName = "Enchanted Ring";
    EnchantItem(Enchants);

}

void GenerateAmulet()
{
    string sAmulet = "lutes_amulet0";
    int n = Random(10)+1;
    if( n < 10) sAmulet = sAmulet + "0" + IntToString(n);
    else sAmulet = sAmulet + IntToString(n);
    object oAmulet = CreateItemOnObject(sAmulet,oObject,1);
    SetIdentified(oAmulet,bIdentified);
    struct sEnchantments Enchants;


    object oldItem=oAmulet;
    oAmulet = OBJECT_INVALID;
    oAmulet= CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(10));
    if(GetIsObjectValid(oAmulet)) DestroyObject(oldItem);

    Enchants.oItem = oAmulet;
    Enchants.sName = "Enchanted Amulet";
    EnchantItem(Enchants);

}

