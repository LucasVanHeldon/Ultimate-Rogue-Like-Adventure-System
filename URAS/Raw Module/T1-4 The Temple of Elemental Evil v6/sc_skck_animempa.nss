//::///////////////////////////////////////////////
//:: FileName sc_skck_animempa
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 9/15/2004 5:27:06 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Perform skill checks
	if(!(AutoDC(DC_EASY, SKILL_ANIMAL_EMPATHY, GetPCSpeaker())))
		return FALSE;

	return TRUE;
}