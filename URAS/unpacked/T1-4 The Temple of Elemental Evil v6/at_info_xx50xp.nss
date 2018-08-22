//::///////////////////////////////////////////////
//:: FileName at_givepc_xx50xp
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/27/2006 8:43:56 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    // Give the party some XP
    RewardPartyXP(50, oPC, TRUE);
    FloatingTextStringOnCreature("You've gained information.", oPC);
}
