//::///////////////////////////////////////////////
//:: FileName sc_growl3
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 12/30/2004 7:52:47 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "Growl") == 1))
		return FALSE;
	if(!(GetLocalInt(GetPCSpeaker(), "Growl2") == 1))
		return FALSE;

	return TRUE;
}
