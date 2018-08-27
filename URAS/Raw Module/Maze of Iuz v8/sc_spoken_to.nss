//::///////////////////////////////////////////////
//:: FileName sc_spoken_to
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/18/2006 11:11:18 PM
//:://////////////////////////////////////////////
int StartingConditional()
{
    //Checks to see if PC has spoken to this NPC yet
    object oSpoke = OBJECT_SELF;
    // Inspect local variables stored on NPC
    if(!(GetLocalInt(oSpoke, "spoken_to") == 1))
        return FALSE;

    return TRUE;
}
