//::///////////////////////////////////////////////
//:: FileName sc_cook01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 7/4/2005 11:12:21 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetArea(GetPCSpeaker()), "cook") == 0))
        return FALSE;

    return TRUE;
}
