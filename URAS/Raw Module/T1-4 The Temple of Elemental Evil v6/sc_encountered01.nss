//::///////////////////////////////////////////////
//:: FileName sc_encountered01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/23/2006 1:51:14 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetModule(), "Markessa") == 1))
        return FALSE;

    return TRUE;
}