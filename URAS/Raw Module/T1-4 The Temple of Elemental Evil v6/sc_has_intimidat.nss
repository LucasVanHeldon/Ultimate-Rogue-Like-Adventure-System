//::///////////////////////////////////////////////
//:: FileName sc_has_intimidat
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/9/2004 1:03:55 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Make sure the player has the required skills
	if(!GetHasSkill(SKILL_INTIMIDATE, GetPCSpeaker()))
		return FALSE;

	return TRUE;
}