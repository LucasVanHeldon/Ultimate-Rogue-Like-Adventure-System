//::///////////////////////////////////////////////
//:: FileName sc_ey_ares_01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 3/8/2006 12:15:54 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "Ey'ares") == 1))
		return FALSE;

	return TRUE;
}
