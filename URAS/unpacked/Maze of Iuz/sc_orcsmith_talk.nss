//::///////////////////////////////////////////////
//:: FileName sc_orcsmith_talk
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/14/2005 12:05:38 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "orcsmith_talk") == 1))
		return FALSE;

	return TRUE;
}