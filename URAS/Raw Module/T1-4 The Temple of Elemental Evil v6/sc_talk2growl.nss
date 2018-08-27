//::///////////////////////////////////////////////
//:: FileName sc_talk2growl
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/30/2003 5:24:08 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the player has the required skills
	if(!GetHasSkill(SKILL_ANIMAL_EMPATHY, GetPCSpeaker()))
		return FALSE;

	// Perform skill checks
	if(!(AutoDC(DC_MEDIUM, SKILL_ANIMAL_EMPATHY, GetPCSpeaker())))
		return FALSE;

	return TRUE;
}
