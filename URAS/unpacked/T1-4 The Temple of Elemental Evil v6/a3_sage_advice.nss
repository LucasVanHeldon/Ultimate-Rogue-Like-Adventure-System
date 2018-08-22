//::///////////////////////////////////////////////
//:: FileName a3_sage_advice
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/27/2006 10:59:55 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

void main()
{
	// Give the speaker some XP
	RewardPartyXP(50, GetPCSpeaker());

	// Give the speaker the items
	CreateItemOnObject("illuminationrose", GetPCSpeaker(), 1);


	// Remove some gold from the player
	TakeGoldFromCreature(100, GetPCSpeaker(), TRUE);
}
