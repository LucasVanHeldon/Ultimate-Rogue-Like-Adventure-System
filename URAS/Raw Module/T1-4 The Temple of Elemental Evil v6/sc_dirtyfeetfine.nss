//::///////////////////////////////////////////////
//:: FileName sc_dirtyfeetfine
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/25/2006 10:30:59 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "DirtyFeetFine") == 0))
		return FALSE;

	return TRUE;
}
