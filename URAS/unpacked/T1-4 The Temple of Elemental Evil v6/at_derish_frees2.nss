//::///////////////////////////////////////////////
//:: FileName at_derish_freesl
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/6/2005 2:59:41 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

void main()
{
//    if(GetLocalInt(GetModule(), "Derish_SLaves") == 2)
//    return;
    // Give the speaker some XP
    //RewardPartyXP(1000, GetPCSpeaker());
    SetLocalInt(GetModule(), "Derish_Slaves", 2);

}
