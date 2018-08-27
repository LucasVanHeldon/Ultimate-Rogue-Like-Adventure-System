//::///////////////////////////////////////////////
//:: FileName sc_int_lore_chk
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/23/2005 1:08:25 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{
    if(!(GetAbilityScore(GetPCSpeaker(), ABILITY_INTELLIGENCE) >= 10))
        return FALSE;

    // Perform skill checks
    if(!(AutoDC(DC_MEDIUM, SKILL_LORE, GetPCSpeaker())))
        return FALSE;

    return TRUE;
}
