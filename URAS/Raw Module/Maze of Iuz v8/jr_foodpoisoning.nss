void main()
{
    object oPC = GetPCSpeaker();
    object oTarget;
    oTarget = oPC;
    effect eEffect = EffectDisease(DISEASE_SOLDIER_SHAKES);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, 180.0f);

}
