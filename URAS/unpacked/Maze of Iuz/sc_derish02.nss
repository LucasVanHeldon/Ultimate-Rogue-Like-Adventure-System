//::///////////////////////////////////////////////
//:: FileName sc_derish02
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/6/2005 12:42:16 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetArea(GetPCSpeaker()), "derishfirst") == 1))
        return FALSE;

    return TRUE;
}