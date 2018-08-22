//::///////////////////////////////////////////////
//:: FileName sc_has_ptgaseous
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/27/2005 9:53:24 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!HasItem(GetPCSpeaker(), "PotionofGaseousForm"))
        return FALSE;

    return TRUE;
}
