//::///////////////////////////////////////////////
//:: FileName at_attack01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/8/2003 2:52:42 AM
//:://////////////////////////////////////////////
#include "nw_i0_generic"

void main()
{

	// Set the faction to hate the player, then attack the player
	AdjustReputation(GetPCSpeaker(), OBJECT_SELF, -100);
	DetermineCombatRound(GetPCSpeaker());
}
