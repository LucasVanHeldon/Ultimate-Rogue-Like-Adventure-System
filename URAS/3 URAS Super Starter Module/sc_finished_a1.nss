//::///////////////////////////////////////////////
//:: FileName sc_finished_a1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/5/2004 8:44:32 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "Finished_A1") > 0))
		return FALSE;

	return TRUE;
}
