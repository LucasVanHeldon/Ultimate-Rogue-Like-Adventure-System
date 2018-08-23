//::///////////////////////////////////////////////
//:: FileName sc_door_blackker
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/19/2006 1:09:06 AM
//:://////////////////////////////////////////////
int StartingConditional()
{
    object oPC = GetPCSpeaker();
    // Inspect local variables
    if(!(GetLocalInt(GetArea(oPC), "BlackKerrDoorOpen") == 1))
        return FALSE;

    return TRUE;
}
