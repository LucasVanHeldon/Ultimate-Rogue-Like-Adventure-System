/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnUsed
void main()
{

object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

if (GetItemPossessedBy(oPC, "WaterElementalGem")== OBJECT_INVALID)
   return;

if (GetItemPossessedBy(oPC, "FireElementalGem")== OBJECT_INVALID)
   return;

if (GetItemPossessedBy(oPC, "EarthElementalGem")== OBJECT_INVALID)
   return;

if (GetItemPossessedBy(oPC, "AirElementalGem")== OBJECT_INVALID)
   return;

object oTarget;
oTarget = GetObjectByTag("ZEP_LIGHTSHFT005");

//Visual effects can't be applied to waypoints, so if it is a WP
//apply to the WP's location instead

int nInt;
nInt = GetObjectType(oTarget);

if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_SCREEN_SHAKE), oTarget);
else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_SCREEN_SHAKE), GetLocation(oTarget));

oTarget = GetObjectByTag("ZEP_LIGHTSHFT005");

DestroyObject(oTarget, 3.0);

object oItem;
oItem = GetItemPossessedBy(oPC, "WaterElementalGem");

if (GetIsObjectValid(oItem))
   DestroyObject(oItem);

oItem = GetItemPossessedBy(oPC, "FireElementalGem");

if (GetIsObjectValid(oItem))
   DestroyObject(oItem);

oItem = GetItemPossessedBy(oPC, "EarthElementalGem");

if (GetIsObjectValid(oItem))
   DestroyObject(oItem);

oItem = GetItemPossessedBy(oPC, "AirElementalGem");

if (GetIsObjectValid(oItem))
   DestroyObject(oItem);

}

