//::///////////////////////////////////////////////
//:: FileName sc_receipt
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/1/2005 1:03:33 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!HasItem(GetPCSpeaker(), "BonusReceipt"))
        return FALSE;

    // Inspect local variables
    if(!(GetLocalInt(GetArea(GetPCSpeaker()), "receipt") == 1))
        return FALSE;

    return TRUE;
}
