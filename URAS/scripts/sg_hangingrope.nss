/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnUsed
void main()
{

object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

int nSecretRopeDoor = GetLocalInt(GetArea(oPC), "HangingRope");

if (nSecretRopeDoor==1)
 {
  object oDoor;
  oDoor = GetNearestObjectByTag("SecretRopeDoor");
  if (oDoor == (OBJECT_INVALID))
  {
   object oTarget;
   object oSpawn;
   location lTarget;
   oTarget = GetWaypointByTag("WP_SecretRopeDoor");

   lTarget = GetLocation(oTarget);

   oSpawn = CreateObject(OBJECT_TYPE_PLACEABLE, "secretropedoor", lTarget);
  }
  object oTarget;
  oTarget = OBJECT_SELF;

  AssignCommand(oTarget, ActionStartConversation(oPC, ""));
 }

else
{

SetLocalInt(GetArea(oPC), "HangingRope", 1);

object oTarget;
object oSpawn;
location lTarget;
oTarget = GetWaypointByTag("WP_SecretRopeDoor");

lTarget = GetLocation(oTarget);

oSpawn = CreateObject(OBJECT_TYPE_PLACEABLE, "secretropedoor", lTarget);

oTarget = GetWaypointByTag("WP_floorpit");

lTarget = GetLocation(oTarget);

oSpawn = CreateObject(OBJECT_TYPE_PLACEABLE, "zep_trap002", lTarget);

SetLocalInt(GetArea(oPC), "floorpit", 1);

}

}

