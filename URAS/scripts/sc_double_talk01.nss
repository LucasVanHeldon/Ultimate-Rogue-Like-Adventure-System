//::///////////////////////////////////////////////
//:: FileName sc_double_talk01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/24/2006 9:12:39 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetModule(), "double_talk") == 1))
        return FALSE;

    return TRUE;
}