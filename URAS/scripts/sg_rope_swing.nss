location lTarget;
object oTarget;
#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

if (GetLocalInt(oPC, "rope_xp")== 0)
   {
   SetLocalInt(oPC, "rope_xp", 1);

   RewardPartyXP(30, oPC, FALSE);

   oTarget = GetWaypointByTag("WP_ledge");

   lTarget = GetLocation(oTarget);

   if (GetAreaFromLocation(lTarget)==OBJECT_INVALID) return;

   AssignCommand(oPC, ClearAllActions());

   AssignCommand(oPC, ActionJumpToLocation(lTarget));

   }
else
   {
   oTarget = GetWaypointByTag("WP_ledge");

   lTarget = GetLocation(oTarget);

   if (GetAreaFromLocation(lTarget)==OBJECT_INVALID) return;

   AssignCommand(oPC, ClearAllActions());

   AssignCommand(oPC, ActionJumpToLocation(lTarget));

   }

}
