//::///////////////////////////////////////////////
//:: FileName at_trapdoor_open
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 9/9/2004 6:33:57 PM
//:://////////////////////////////////////////////
void main()
{
    // Set the variables
    SetLocalInt(GetPCSpeaker(), "trapdoor3fe_open", 1);

object oPC = GetPCSpeaker();

effect eEffect;
eEffect = EffectDamage(d6(2), DAMAGE_TYPE_BLUDGEONING, DAMAGE_POWER_NORMAL);

ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oPC);

}
