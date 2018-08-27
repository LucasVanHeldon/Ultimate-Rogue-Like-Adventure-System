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
        AdjustAlignment(GetPCSpeaker(),ALIGNMENT_GOOD,1);
        AdjustAlignment(GetPCSpeaker(),ALIGNMENT_CHAOTIC,1);
        AdjustReputation(GetPCSpeaker(),OBJECT_SELF,5);
        SetLocalInt(OBJECT_SELF, "XPReward", 1);
    }
}
