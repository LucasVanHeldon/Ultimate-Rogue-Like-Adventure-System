//::///////////////////////////////////////////////
//:: FileName sc_others_free
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/19/2006 11:55:21 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "BlackKerrFree") == 1))
		return FALSE;
	if(!(GetLocalInt(GetPCSpeaker(), "MitganFree") == 1))
		return FALSE;

	return TRUE;
}
