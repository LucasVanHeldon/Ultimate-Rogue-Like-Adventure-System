/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

if (GetItemPossessedBy(oPC, "SmallPentagram")!= OBJECT_INVALID)
   return;

object oTarget;
oTarget = oPC;

effect eEffect;
eEffect = EffectPolymorph(POLYMORPH_TYPE_CHICKEN);

eEffect = SupernaturalEffect(eEffect);

ApplyEffectToObject(DURATION_TYPE_PERMANENT, eEffect, oTarget);

}

