//::///////////////////////////////////////////////
//:: Default On Damaged
//:: NW_C2_DEFAULT6
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    If already fighting then ignore, else determine
    combat round
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 16, 2001
//:://////////////////////////////////////////////

#include "hench_i0_ai"


void main()
{
    if(GetFleeToExit())
    {

    }
    else if (GetSpawnInCondition(NW_FLAG_SET_WARNINGS))
    {
        // don't do anything?
    }
    else
    {
        object oDamager = GetLastDamager();
        if (!GetIsObjectValid(oDamager))
        {
        // don't do anything, we don't have a valid damager
        }
        else if (!GetIsFighting(OBJECT_SELF))
        {
            if ((GetLocalInt(OBJECT_SELF, HENCH_HEAL_SELF_STATE) == HENCH_HEAL_SELF_WAIT) &&
                (GetPercentageHPLoss(OBJECT_SELF) < 30))
            {
                // force heal
                HenchDetermineCombatRound(OBJECT_INVALID, TRUE);
            }
            else if(!GetIsObjectValid(GetAttemptedAttackTarget()) && !GetIsObjectValid(GetAttemptedSpellTarget()))
            {
//    Jug_Debug(GetName(OBJECT_SELF) + " responding to damage");
                if(GetBehaviorState(NW_FLAG_BEHAVIOR_SPECIAL))
                {
                    HenchDetermineSpecialBehavior(oDamager);
                }
                else
                {
                    HenchDetermineCombatRound(oDamager);
                }
            }
        }
    }
    if(GetSpawnInCondition(NW_FLAG_DAMAGED_EVENT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(EVENT_DAMAGED));
    }
}
