//::///////////////////////////////////////////////
//:: FileName at_atk_alert02_1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/6/2005 5:28:00 AM
//:://////////////////////////////////////////////
#include "nw_i0_generic"

void main()
{
	// Set the variables
	SetLocalInt(GetPCSpeaker(), "Alert02", 1);


	// Set the faction to hate the player, then attack the player
	AdjustReputation(GetPCSpeaker(), OBJECT_SELF, -100);
	DetermineCombatRound(GetPCSpeaker());
}
