//::///////////////////////////////////////////////
//:: Default: End of Combat Round
//:: NW_C2_DEFAULT3
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Calls the end of combat script every round
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 16, 2001
//:://////////////////////////////////////////////

#include "hench_i0_ai"


void main()
{
//    Jug_Debug("*****" + GetName(OBJECT_SELF) + " end combat round action " + IntToString(GetCurrentAction()));

    DeleteLocalInt(OBJECT_SELF, "AIIntruder");

    if(GetBehaviorState(NW_FLAG_BEHAVIOR_SPECIAL))
    {
        HenchDetermineSpecialBehavior();
    }
    else if(!GetSpawnInCondition(NW_FLAG_SET_WARNINGS))
    {
        HenchDetermineCombatRound();
    }
    // special code for host tower level 4
    if(GetSpawnInCondition(NW_FLAG_END_COMBAT_ROUND_EVENT) && GetTag(OBJECT_SELF) != "2Q6_HelmHorror")
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(EVENT_END_COMBAT_ROUND));
    }
}


