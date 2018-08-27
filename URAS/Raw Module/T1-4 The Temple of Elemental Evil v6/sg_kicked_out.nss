/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

object oTarget;
location lTarget;
oTarget = GetWaypointByTag("WP_KickedOut");

lTarget = GetLocation(oTarget);

SetLocalInt(oPC, "Alert02", 1);

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

