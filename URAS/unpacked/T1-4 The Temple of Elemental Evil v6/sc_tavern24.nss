//::///////////////////////////////////////////////
//:: FileName sc_tavern24
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/15/2006 11:26:44 PM
//:://////////////////////////////////////////////
int StartingConditional()
{
    object oPC = GetPCSpeaker();
    // Inspect local variables
    if(!(GetLocalInt(GetArea(oPC), "Tavern") == 24))
        return FALSE;

    return TRUE;
}
