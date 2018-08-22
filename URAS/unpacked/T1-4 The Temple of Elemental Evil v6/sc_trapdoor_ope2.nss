//::///////////////////////////////////////////////
//:: FileName sc_trapdoor_open
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 9/9/2004 5:59:00 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

    //making sure that the trapdoor(above the Vertical Ladder) in "CurtainWall, 2nd Floor" has already been opened.
    if(!(GetLocalInt(GetPCSpeaker(), "trapdoor3fw_open") == 1))
        return FALSE;

    return TRUE;
}
