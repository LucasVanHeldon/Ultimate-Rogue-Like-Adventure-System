//::///////////////////////////////////////////////
//:: FileName a3_dame_cloak
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/18/2006 11:59:50 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

void main()
{
    // Give the speaker some XP
    RewardPartyXP(4000, GetPCSpeaker());


    // Remove items from the player's inventory
    object oItemToTake;
    oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "HoodedCloak");
    if(GetIsObjectValid(oItemToTake) != 0)
        DestroyObject(oItemToTake);
    // Set the variables
    SetLocalInt(GetPCSpeaker(), "FindCloak", 2);
    ActionEquipItem(GetItemPossessedBy(OBJECT_SELF, "DameHood"), INVENTORY_SLOT_HEAD);
    ActionEquipItem(GetItemPossessedBy(OBJECT_SELF, "DameCloak"), INVENTORY_SLOT_CHEST);

}
