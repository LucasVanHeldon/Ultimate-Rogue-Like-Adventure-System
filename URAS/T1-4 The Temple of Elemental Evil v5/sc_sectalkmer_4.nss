//::///////////////////////////////////////////////
//:: FileName sc_sectalkmer_2
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/7/2006 10:25:48 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetPCSpeaker(), "FirstTimeTalk_Merch_4") > 0))
        return FALSE;

    return TRUE;
}
