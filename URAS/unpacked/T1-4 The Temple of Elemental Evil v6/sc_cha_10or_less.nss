//::///////////////////////////////////////////////
//:: FileName sc_cha_10or_less
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/20/2006 2:06:42 AM
//:://////////////////////////////////////////////
int StartingConditional()
{
	if(!(GetAbilityScore(GetPCSpeaker(), ABILITY_CHARISMA) < 11))
		return FALSE;

	return TRUE;
}