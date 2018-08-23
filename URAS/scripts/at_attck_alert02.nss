//::///////////////////////////////////////////////
//:: FileName at_attck_alert02
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 10/13/2004 3:17:53 PM
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
