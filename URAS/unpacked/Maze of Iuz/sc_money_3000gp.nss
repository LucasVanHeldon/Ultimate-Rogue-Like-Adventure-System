//::///////////////////////////////////////////////
//:: FileName sc_money_1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/11/2006 12:49:31 AM
//:://////////////////////////////////////////////
int StartingConditional()
{
    object oPC = GetPCSpeaker();

    // Inspect local variables
    if(!(GetLocalInt(GetModule(), "Money") == 1))
        return FALSE;

    else if (GetGold(oPC) < 3000) return FALSE;

    return TRUE;
}
