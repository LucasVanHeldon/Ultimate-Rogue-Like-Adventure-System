/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Can go OnDamaged, OnDisturbed, OnSpellCastAt, creature heartbeats, etc.
void main()
{

object oPC = GetLastHostileActor();

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = OBJECT_SELF;

AdjustReputation(oPC, oTarget, 100);

FloatingTextStringOnCreature("Your attacks against the statue seem meaningless.", oPC);

}

