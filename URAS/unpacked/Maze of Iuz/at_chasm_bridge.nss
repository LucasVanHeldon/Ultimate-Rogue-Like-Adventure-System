//::///////////////////////////////////////////////
//:: FileName at_chasm_bridge
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/3/2005 12:35:36 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"
void main()
{

    // Remove items from the player's inventory
    object oItemToTake;
    oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "LumberBoard");
    if(GetIsObjectValid(oItemToTake) != 0)
        DestroyObject(oItemToTake);

    object oPC = GetPCSpeaker();

    int nInt = GetLocalInt(GetArea(oPC), "chasm");

    nInt += 1;

    SetLocalInt(GetArea(oPC), "chasm", nInt);

    RewardPartyXP(20, oPC, TRUE);
}
