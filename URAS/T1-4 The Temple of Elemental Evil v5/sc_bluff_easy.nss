//::///////////////////////////////////////////////
//:: FileName sc_bluff_easy
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/9/2004 2:20:21 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Perform skill checks
	if(!(AutoDC(DC_EASY, SKILL_BLUFF, GetPCSpeaker())))
		return FALSE;

	return TRUE;
}
