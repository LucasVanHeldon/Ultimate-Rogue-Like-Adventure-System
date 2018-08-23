//::///////////////////////////////////////////////
//:: FileName sc_has_citypass
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 3/12/2006 4:18:45 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!CheckPartyForItem(GetPCSpeaker(), "CityPass"))
        return FALSE;

    return TRUE;
}
