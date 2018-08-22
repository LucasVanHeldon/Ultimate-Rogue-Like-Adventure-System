int nInt;
object oTarget;
effect eEffect;
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnEnter
void main()
{

object oPC = GetEnteringObject();

//if (!GetIsPC(oPC)) return;

if (GetLocalInt(oPC, "WhiteGoo")== 1)
   {
   if (FortitudeSave(oPC, 26, SAVING_THROW_TYPE_SPELL ))
      {
      eEffect = EffectDamage(8, DAMAGE_TYPE_ELECTRICAL, DAMAGE_POWER_ENERGY);

      ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oPC);

      oTarget = oPC;

      nInt = GetObjectType(oTarget);

      if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_S), oTarget);
      else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_S), GetLocation(oTarget));

      }
   else
      {
      eEffect = EffectDamage(16, DAMAGE_TYPE_ELECTRICAL, DAMAGE_POWER_ENERGY);

      ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oPC);

      oTarget = oPC;

      nInt = GetObjectType(oTarget);

      if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oTarget);
      else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), GetLocation(oTarget));

      }

   }
else
   {
   if (FortitudeSave(oPC, 26, SAVING_THROW_TYPE_SPELL ))
      {
      eEffect = EffectDamage(16, DAMAGE_TYPE_ELECTRICAL, DAMAGE_POWER_ENERGY);

      ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oPC);

      oTarget = oPC;

      nInt = GetObjectType(oTarget);

      if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oTarget);
      else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), GetLocation(oTarget));

      }
   else
      {
      eEffect = EffectDamage(32, DAMAGE_TYPE_ELECTRICAL, DAMAGE_POWER_ENERGY);

      ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oPC);

      oTarget = oPC;

      nInt = GetObjectType(oTarget);

      if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oTarget);
      else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), GetLocation(oTarget));

      }

   }

}

