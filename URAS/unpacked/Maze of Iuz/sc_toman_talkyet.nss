//::///////////////////////////////////////////////
//:: FileName sc_toman_talkyet
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/17/2003 12:43:17 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "toman") == 0))
		return FALSE;

	return TRUE;
}