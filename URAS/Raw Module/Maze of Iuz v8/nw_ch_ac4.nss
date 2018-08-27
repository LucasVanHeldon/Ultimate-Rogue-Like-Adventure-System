//::///////////////////////////////////////////////
//:: Associate: On Dialogue
//:: NW_CH_AC4
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determines the course of action to be taken
    by the generic script after dialogue or a
    shout is initiated.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 24, 2001
//:://////////////////////////////////////////////

#include "hench_i0_hensho"


void main()
{
    object oMaster = GetMaster();
    int nMatch = GetListenPatternNumber();
    object oShouter = GetLastSpeaker();
    
    object oIntruder;
    if (nMatch == -1)
    {
        if(!GetIsDisabled(OBJECT_SELF) && GetCurrentAction() != ACTION_OPENLOCK)
        {
            ClearAllActions();
                // restore associate settings
            HenchGetDefSettings();
            // * if in XP2, use an alternative dialog file
            string sDialog = "";
            if (GetLocalInt(GetModule(), "X2_L_XP2") == 1)
            {
                sDialog = "x2_associate";
            }
            BeginConversation(sDialog);
        }
    }
    else if(GetIsObjectValid(oShouter) && oMaster == oShouter)
    {
        SetCommandable(TRUE);
        HenchChRespondToShout(oShouter, nMatch, oIntruder);
    }

    // Signal user-defined event
    if(GetSpawnInCondition(NW_FLAG_ON_DIALOGUE_EVENT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(EVENT_DIALOGUE));
    }
}

