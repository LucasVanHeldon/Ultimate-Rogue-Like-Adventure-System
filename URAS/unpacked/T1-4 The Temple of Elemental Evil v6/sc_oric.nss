//::///////////////////////////////////////////////
//:: FileName sc_oric
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 3/12/2006 1:32:51 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "oric") == 1))
		return FALSE;

	return TRUE;
}