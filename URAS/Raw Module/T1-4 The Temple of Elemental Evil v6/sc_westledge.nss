//::///////////////////////////////////////////////
//:: FileName sc_westledge
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 10/3/2003 10:36:52 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(OBJECT_SELF, "west ledge") > 0))
        return FALSE;

    return TRUE;
}