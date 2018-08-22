//::///////////////////////////////////////////////
//:: FileName at_take_ptlevita
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/27/2005 9:24:04 PM
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

RewardPartyXP(50, oPC, FALSE);

object oTarget;
location lTarget;
oTarget = GetWaypointByTag("CrossOver01");

lTarget = GetLocation(oTarget);

//only do the jump if the location is valid.
//though not flawless, we just check if it is in a valid area.
//the script will stop if the location isn't valid - meaning that
//nothing put after the teleport will fire either.
//the current location won't be stored, either

if (GetAreaFromLocation(lTarget)==OBJECT_INVALID) return;

AssignCommand(oPC, ClearAllActions());

AssignCommand(oPC, ActionJumpToLocation(lTarget));

}
