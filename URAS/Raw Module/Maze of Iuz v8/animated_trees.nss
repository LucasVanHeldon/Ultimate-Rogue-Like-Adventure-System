#include "nw_i0_generic"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.2

For download info, please visit:
http://www.angelfire.com/space/lilacsoul    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

if (DoOnce==TRUE) return;

SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE);

//Destroys Placeable Tree so that you can spawn in an Animated Tree in its place @ a certain spawnpoint which should be where the original Placeable tree was at.

object oTarget;
oTarget = GetObjectByTag("Tree_Animated01");

DestroyObject(oTarget, 0.0);

oTarget = GetObjectByTag("Tree_Animated02");

DestroyObject(oTarget, 0.0);

oTarget = GetObjectByTag("Tree_Animated03");

DestroyObject(oTarget, 0.0);

oTarget = GetObjectByTag("Tree_Animated04");

DestroyObject(oTarget, 0.0);

oTarget = GetObjectByTag("Tree_Animated05");

DestroyObject(oTarget, 0.0);

oTarget = GetObjectByTag("Tree_Animated06");

DestroyObject(oTarget, 0.0);

object oSpawn;
oTarget = GetWaypointByTag("WP_Tree_Animated01");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "animatedtree", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("WP_Tree_Animated02");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "animatedtree", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("WP_Tree_Animated03");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "animatedtree", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("WP_Tree_Animated04");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "animatedtree", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("WP_Tree_Animated05");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "animatedtree", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetWaypointByTag("WP_Tree_Animated06");

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "animatedtree", GetLocation(oTarget));

oTarget = oSpawn;

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

}

