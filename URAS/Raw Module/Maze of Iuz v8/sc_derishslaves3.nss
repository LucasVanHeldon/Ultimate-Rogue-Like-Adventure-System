//::///////////////////////////////////////////////
//:: FileName sc_derishslaves3
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/6/2005 4:34:04 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetModule(), "Derish_Slaves") == 3))
        return FALSE;

    return TRUE;
}