//::///////////////////////////////////////////////
//:: FileName sc_name_00
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/23/2006 12:06:43 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "name") == 0))
		return FALSE;

	return TRUE;
}
