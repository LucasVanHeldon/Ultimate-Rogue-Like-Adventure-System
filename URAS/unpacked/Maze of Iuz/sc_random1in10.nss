//::///////////////////////////////////////////////
//:: FileName sc_random1in10
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/1/2006 1:06:55 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Add the randomness
	if(Random(10) >= 1)
		return FALSE;

	return TRUE;
}
