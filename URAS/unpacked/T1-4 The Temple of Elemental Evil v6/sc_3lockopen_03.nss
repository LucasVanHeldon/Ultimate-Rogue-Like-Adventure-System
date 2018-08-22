//::///////////////////////////////////////////////
//:: FileName sc_3lockopen_02
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/4/2005 12:47:36 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Inspect local variables
//    if(!(GetLocalInt(GetPCSpeaker(), "Lock_Opened") == 1))
//        return FALSE;

    // Make sure the player has the required skills
    if(!GetHasSkill(SKILL_OPEN_LOCK, GetPCSpeaker()))
        return FALSE;

    // Perform skill checks
    if(!(AutoDC(DC_HARD, SKILL_OPEN_LOCK, GetPCSpeaker())))
        return FALSE;

    return TRUE;
}
