//::///////////////////////////////////////////////
//:: FileName sc_guardtalk01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/27/2006 9:43:30 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(OBJECT_SELF, "guardtalk") == 0))
        return FALSE;

    return TRUE;
}
