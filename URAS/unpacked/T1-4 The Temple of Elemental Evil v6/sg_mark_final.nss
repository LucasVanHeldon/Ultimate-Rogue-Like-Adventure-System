/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

if (GetLocalInt(GetModule(), "Markessa")!= 2)
   return;

if (GetLocalInt(OBJECT_SELF, "final")!= 0)
   return;

object oTarget;
oTarget = GetObjectByTag("MarkessaFINAL_Door");

SetLocked(oTarget, FALSE);

AssignCommand(oTarget, ActionOpenDoor(oTarget));

object oSpawn;
location lTarget;
oTarget = GetWaypointByTag("WP_Markessa_FINAL");

lTarget = GetLocation(oTarget);

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "markessa002", lTarget);

SetLocalInt(OBJECT_SELF, "final", 1);

}
