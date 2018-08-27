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

ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(16, DAMAGE_TYPE_MAGICAL, DAMAGE_POWER_ENERGY), oPC);

{
object oTarget;

oTarget = oPC;

ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_SOUND_BURST), GetLocation(oTarget));


  {

    oTarget = GetObjectByTag("GargoyleStatue1");

    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_DESTRUCTION), GetLocation(oTarget));

    DestroyObject(oTarget, 1.0);

  }
  {

    oTarget = GetObjectByTag("GargoyleStatue2");

    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_DESTRUCTION), GetLocation(oTarget));

    DestroyObject(oTarget, 1.0);

  }

 }

}
