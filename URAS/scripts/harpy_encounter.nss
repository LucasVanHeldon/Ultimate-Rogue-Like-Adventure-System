#include "nw_i0_generic"
string sDeny;
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.2

For download info, please visit:
http://www.angelfire.com/space/lilacsoul    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();
object oItem = GetItemPossessedBy(oPC, "LumpsofWax");

if (!GetIsPC(oPC)) return;

int nInt;
nInt=GetLocalInt(oPC, "EncounterHarpy");

//Check to see if Harpies have been encountered before, if YES, nothing happens
if (!(nInt <= 0))
   return;

 {

//Checks to see if Players have required item, if YES, destroy Item, send Message, and end of encounter
if (GetItemPossessedBy(oPC, "LumpsofWax")!= OBJECT_INVALID)
   {

   DestroyObject(oItem,1.0f);

   sDeny="The Harpies seem to be ignoring you.";

   SendMessageToPC(oPC, sDeny);

   return;
   }

object oTarget;
object oSpawn;

SetLocalInt(oPC, "EncounterHarpy", 1);

oTarget = GetWaypointByTag("wp_harpy1");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "X2_HARPY001", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("wp_harpy1");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "X2_HARPY001", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("wp_harpy2");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "harpy002", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("wp_harpy2");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "X2_HARPY001", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

} //end of encounter spawn

}

