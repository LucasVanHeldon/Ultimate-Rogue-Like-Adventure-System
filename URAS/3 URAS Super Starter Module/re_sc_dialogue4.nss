//::///////////////////////////////////////////////
//:: FileName sc_dialogue1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/16/2003 9:32:45 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(OBJECT_SELF, "iDialogue") == 4))
        return FALSE;

    return TRUE;
}
