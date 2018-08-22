//::///////////////////////////////////////////////
//:: FileName sc_has_levitate
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/27/2005 9:22:34 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!HasItem(GetPCSpeaker(), "PotionofLevitation"))
		return FALSE;

	return TRUE;
}
