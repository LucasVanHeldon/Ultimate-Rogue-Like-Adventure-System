/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnUsed
void main()
{

object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

object oTarget;
location lTarget;
oTarget = GetWaypointByTag("WP_CavernEXIT");

lTarget = GetLocation(oTarget);

//only do the jump if the location is valid.
//though not flawless, we just check if it is in a valid area.
//the script will stop if the location isn't valid - meaning that
//nothing put after the teleport will fire either.
//the current location won't be stored, either

if (GetAreaFromLocation(lTarget)==OBJECT_INVALID) return;

oTarget=GetFirstFactionMember(oPC, FALSE);

while (GetIsObjectValid(oTarget))
   {
   AssignCommand(oTarget, ClearAllActions());

   AssignCommand(oTarget, ActionJumpToLocation(lTarget));
   oTarget=GetNextFactionMember(oPC, FALSE);
   }

}

