//::///////////////////////////////////////////////
//:: FileName at_take_ptlevitc
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 12/23/2005 10:31:05 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"
void main()
{

    // Remove items from the player's inventory
    object oItemToTake;
    oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "PotionofLevitation");
    if(GetIsObjectValid(oItemToTake) != 0)
        DestroyObject(oItemToTake);

object oPC = GetPCSpeaker();

RewardPartyXP(50, oPC, FALSE); //XP for use of Potion

}
