/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.3

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
#include "nw_i0_generic"
void main()
{

object oPC = GetPCSpeaker();

object oTarget;
oTarget = GetObjectByTag("TreasuryGuard_a");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetObjectByTag("TreasuryGuard_b");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetObjectByTag("TreasuryGuard_c");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetObjectByTag("TreasuryGuard_d");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetObjectByTag("TreasuryGuard01");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetObjectByTag("TreasuryGuard02");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

oTarget = GetObjectByTag("TreasuryGuard03");

AdjustReputation(oPC, oTarget, -100);

SetIsTemporaryEnemy(oPC, oTarget);

AssignCommand(oTarget, ActionAttack(oPC));

AssignCommand(oTarget, DetermineCombatRound(oPC));

}

