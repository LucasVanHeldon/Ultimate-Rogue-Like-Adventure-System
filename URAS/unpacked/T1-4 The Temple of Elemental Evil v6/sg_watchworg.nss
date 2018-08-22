#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.0

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

if (GetItemPossessedBy(oPC, "SmellyHerbs")== OBJECT_INVALID)
   return;

object oWorg;
oWorg = GetObjectByTag("WatchWorg1");

AdjustReputation(oPC, oWorg, 100);

oWorg = GetObjectByTag("WatchWorg2");

AdjustReputation(oPC, oWorg, 100);

DelayCommand(3.0, AssignCommand(GetObjectByTag("WatchWorg1"), ActionSpeakString("The worgs sniff the bag of herbs you are carrying and let you pass.")));
DelayCommand(3.0, AssignCommand(GetObjectByTag("WatchWorg2"), ActionSpeakString("The worgs sniff the bag of herbs you are carrying and let you pass.")));

if (GetLocalInt(GetArea(oPC), "watchworg_xp")<= 0)
   {
   RewardPartyXP(100, oPC, TRUE);

   SetLocalInt(GetArea(oPC), "watchworg_xp", 1);

   }
}

