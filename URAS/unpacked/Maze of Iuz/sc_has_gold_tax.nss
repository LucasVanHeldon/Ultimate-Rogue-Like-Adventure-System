//::///////////////////////////////////////////////
//:: FileName sc_has_gold_tax
//:://////////////////////////////////////////////
//::
/*
     Returns TRUE if the PC has not recieved a TAX Quote(PCTax) already from the
     Moneychanger.
*/
//::
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 4/15/2006 12:17:07 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetPCSpeaker(), "PCTax") == 0))
        return FALSE;

    return TRUE;
}
