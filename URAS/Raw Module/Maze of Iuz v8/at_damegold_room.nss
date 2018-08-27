#include "nw_i0_tool"
//::///////////////////////////////////////////////
//:: FileName at_damegold_room
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/7/2005 9:40:34 AM
//:://////////////////////////////////////////////
void main()
{
    object oPC = GetPCSpeaker();

    SendMessageToPC(oPC, "You have gained information.");
    RewardPartyXP(50, oPC, TRUE);

    // Set the variables
    SetLocalInt(GetPCSpeaker(), "DameGold_room", 1);

}
