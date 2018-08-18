//::///////////////////////////////////////////////
//:: XP2 General Treasure Spawn Script
//:: Copyright (c) 2003 Bioware Corp.
//:: FileNameNew: "treasure_chest"
//:://////////////////////////////////////////////
/*
    Spawns in general purpose treasure and gold
    usable by all classes.
    ***Now is truly "random" in treasure generation, yet still uses
    the default treasure scripts... change the OnDeath, and OnOpened,
    of your treasure-container, to this script!
*/
//:://////////////////////////////////////////////
//:: Created By:   Georg Zoeller
//:: Created On:   2003-06-04
//:: Modified By:  Karmana
//:: Modified On:  01MAR05
//:://////////////////////////////////////////////
#include "x2_inc_treasure"
#include "nw_o2_coninclude"
#include "x2_inc_compon"
void main()
{
    craft_drop_placeable();
    if (GetLocalInt(OBJECT_SELF,"NW_DO_ONCE") != 0)
    {
       return;
    }
//oOpener definition made variable, to allow for use on containers, OR npc's!
object oOpener;
    if (GetObjectType(OBJECT_SELF) ==  OBJECT_TYPE_PLACEABLE)
       {
        oOpener = GetLastOpener();
       }
       else
       {
        oOpener = OBJECT_SELF;
       }
//    object oOpener = OBJECT_SELF;
    int iOpenerCR = GetHitDice(oOpener);
    int nType = 0;
int nPMs = 0;
int iLuckyNumber = 0;
string sLuckyOne;
   object oPM = GetFirstFactionMember(oOpener);
   while (GetIsObjectValid(oPM) == TRUE)
   {
      nPMs = nPMs+1;
      iLuckyNumber = Random(nPMs);
      SetLocalInt(oPM, "HeadCount", nPMs);
        if (GetLocalInt(oPM, "HeadCount") == iLuckyNumber)
        {
        SetLocalObject(OBJECT_SELF, sLuckyOne, oPM);
        return;
        }
      oPM = GetNextFactionMember(oOpener);
   }
object oLuckyOne = GetLocalObject(OBJECT_SELF, sLuckyOne);
int nClass = 0;
if (iOpenerCR < 6)
{
    nClass = X2_DTS_CLASS_LOW;
    switch (d4())
    {
    case 1: nType = X2_DTS_TYPE_DISP; break;
    case 2: nType = X2_DTS_TYPE_AMMO; break;
//    case 3: nType = X2_DTS_TYPE_GOLD; break;
    case 3: nType = X2_DTS_TYPE_ITEM; break;
    case 4: CreateTable2Item(OBJECT_SELF, oOpener, 1);
    }
}
if (iOpenerCR < 11)
{
    switch (d3())
        {
        case 1: nClass = X2_DTS_CLASS_LOW; break;
        case 2: nClass = X2_DTS_CLASS_MEDIUM; break;
        case 3: nClass = X2_DTS_CLASS_HIGH; break;
        }
    switch (Random (5) +1)
        {
        case 1: nType = X2_DTS_TYPE_DISP; break;
        case 2: nType = X2_DTS_TYPE_AMMO; break;
        case 3: nType = X2_DTS_TYPE_GOLD; break;
        case 4: nType = X2_DTS_TYPE_ITEM; break;
        case 5: CreateTable2Item(OBJECT_SELF, oOpener, 1);
        }
}
if (iOpenerCR < 40)
{
    switch (d3())
        {
        case 1: nClass = X2_DTS_CLASS_LOW; break;
        case 2: nClass = X2_DTS_CLASS_MEDIUM; break;
        case 3: nClass = X2_DTS_CLASS_HIGH; break;
        }
    switch (Random (5) +1)
        {
        case 1: nType = X2_DTS_TYPE_DISP; break;
        case 2: nType = X2_DTS_TYPE_AMMO; break;
        case 3: nType = X2_DTS_TYPE_GOLD; break;
        case 4: nType = X2_DTS_TYPE_ITEM; break;
        case 5: CreateTable2Item(OBJECT_SELF, oOpener, 1);
        }
    //Generates a PC specific weapon, based on feats.
    //Randomly chooses 1 member of the party, to generate this for.
    //Encourages party willingness to share treasures found.
    DTSGenerateCharSpecificTreasure (OBJECT_SELF, oLuckyOne, FALSE);
}
//Make sure we don't generate treasure that is too high in value!
//Set level variable value limits first:
int iLevelBaseValue = 0;
int iLevel = GetHitDice(oOpener);
if (iLevel < 3)
    {
    iLevelBaseValue = 200;
    }
if (iLevel < 5)
    {
    iLevelBaseValue = 300;//1,200gp cap
    }
if (iLevel < 9)
    {
    iLevelBaseValue = 400;//3,200gp cap
    }
if (iLevel < 13)
    {
    iLevelBaseValue = 500;//7,000gp cap
    }
if (iLevel < 15)
    {
    iLevelBaseValue = 1000;//7,000gp cap
    }
if (iLevel = 16)
    {
    iLevelBaseValue = 1750;//7,000gp cap
    }
if (iLevel = 17)
    {
    iLevelBaseValue = 2117;//35,989gp cap
    }
if (iLevel = 18)
    {
    iLevelBaseValue = 2611;//46,998gp cap
    }
if (iLevel = 19)
    {
    iLevelBaseValue = 3210;//60,990gp cap
    }
if (iLevel = 20)
    {
    iLevelBaseValue = 4000;//80k gp cap
    }
if (iLevel > 20)
    {
    iLevelBaseValue = (4000 + (2000 * (iLevel - 19)));//1,680,000gp cap ???
    }
int iLevelAllowedValue = (iLevelBaseValue * iLevel);//per treasure generated
int iLootActualValue = 0;
//Now Generate the Treasure:
DTSGenerateTreasureOnContainer (OBJECT_SELF, oOpener, nClass, nType);
//Now Compare Generated Treasure, to the limits we set up above, and
//Destroy the highest valued item, if we have exceeded our limit.
object oItem = GetFirstItemInInventory(OBJECT_SELF);
   while (GetIsObjectValid(oItem) == TRUE)
   {
      iLootActualValue = iLootActualValue + GetGoldPieceValue(oItem);
      oItem = GetNextItemInInventory(OBJECT_SELF);
   }
int iDifference = (iLootActualValue - iLevelAllowedValue);
int iMyPrescious;
int iItemValue = 0;
if (iDifference < 0)
    {
    iDifference = 0;
    }
    else if (iDifference > 0)
    {
    oItem = GetFirstItemInInventory(OBJECT_SELF);
    while (GetIsObjectValid(oItem) == TRUE)
    {
        iMyPrescious = GetLocalInt(OBJECT_SELF, "MyPrescious");
        iItemValue = GetGoldPieceValue(oItem);
        if (iItemValue > iMyPrescious)
        {
         SetLocalInt(OBJECT_SELF, "MyPrescious", iItemValue);
         SetLocalObject(OBJECT_SELF,"ITEM",oItem);
        }
    oItem = GetNextItemInInventory(OBJECT_SELF);
    }
    DestroyObject(GetLocalObject(OBJECT_SELF,"ITEM"));
    }
//DO_ONCE line below, commented out for testing purposes ONLY! Uncomment before
//using this "Live" with players!
    SetLocalInt(OBJECT_SELF,"NW_DO_ONCE",1);
    ShoutDisturbed();
}
