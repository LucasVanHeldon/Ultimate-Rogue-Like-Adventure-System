//::///////////////////////////////////////////////
//:: FileName sc_encountered02
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/23/2006 1:53:04 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetModule(), "Markessa") == 2))
        return FALSE;

    return TRUE;
}