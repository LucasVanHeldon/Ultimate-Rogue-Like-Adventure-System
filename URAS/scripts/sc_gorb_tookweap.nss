//::///////////////////////////////////////////////
//:: FileName sc_gorb_tookweap
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/25/2005 7:35:53 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "GorbinTookWeapons") == 1))
		return FALSE;

	return TRUE;
}
