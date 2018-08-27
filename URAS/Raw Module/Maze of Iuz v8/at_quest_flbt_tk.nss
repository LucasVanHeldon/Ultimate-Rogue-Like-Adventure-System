//::///////////////////////////////////////////////
//:: FileName at_quest_flbt_tk
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 12/29/2004 8:30:02 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

void main()
{
	// Give the speaker some XP
	RewardPartyXP(100, GetPCSpeaker());

	// Give the speaker the items
	CreateItemOnObject("flindpassagetkn", GetPCSpeaker(), 1);

	// Set the variables
	SetLocalInt(GetPCSpeaker(), "FlindPass", 1);

}
