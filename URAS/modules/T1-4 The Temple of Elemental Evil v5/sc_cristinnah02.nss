//::///////////////////////////////////////////////
//:: FileName sc_cristinnah02
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/3/2003 9:48:28 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "talked to Cristinnah") > 0))
		return FALSE;

	return TRUE;
}