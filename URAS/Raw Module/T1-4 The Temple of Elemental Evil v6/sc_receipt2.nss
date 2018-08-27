//::///////////////////////////////////////////////
//:: FileName sc_receipt2
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/1/2005 12:48:13 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!HasItem(GetPCSpeaker(), "bonusreceipt"))
        return FALSE;

    // Inspect local variables
    if(!(GetLocalInt(GetArea(GetPCSpeaker()), "receipt") == 2))
        return FALSE;

    return TRUE;
}
