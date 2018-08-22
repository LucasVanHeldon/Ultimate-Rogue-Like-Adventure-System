//::///////////////////////////////////////////////
//:: FileName at_freeslave010
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/18/03 10:51:14 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

void main()
{

//    ActionForceMoveToObject(GetNearestObjectByTag("SlaveExit"),TRUE,2.0);
//    ActionMoveAwayFromObject(GetPCSpeaker());
//    DestroyObject(OBJECT_SELF,10.0);
if (GetLocalInt(OBJECT_SELF, "XPReward") == 0)
    {
        // Give the speaker some XP
        RewardPartyXP(200,GetPCSpeaker());
        AdjustAlignment(GetPCSpeaker(),ALIGNMENT_NEUTRAL,1);
        if (GetAlignmentLawChaos(GetPCSpeaker())== ALIGNMENT_CHAOTIC)
            {
             AdjustAlignment(GetPCSpeaker(),ALIGNMENT_CHAOTIC,1);
            }
        else if (GetAlignmentLawChaos(GetPCSpeaker())== ALIGNMENT_LAWFUL)
            {
             AdjustAlignment(GetPCSpeaker(),ALIGNMENT_LAWFUL,1);
            }

        AdjustReputation(GetPCSpeaker(),OBJECT_SELF,3);
        SetLocalInt(OBJECT_SELF, "XPReward", 1);
    }
}
