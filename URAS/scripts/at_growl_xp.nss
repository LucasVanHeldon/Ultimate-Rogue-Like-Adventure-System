#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

ClearAllActions();

ActionMoveToObject(GetObjectByTag("WP_GrowlLeave"));

object oTarget;
oTarget = OBJECT_SELF;

DelayCommand(5.0, DestroyObject(oTarget, 0.0));

RewardPartyXP(100, oPC, TRUE);

}

