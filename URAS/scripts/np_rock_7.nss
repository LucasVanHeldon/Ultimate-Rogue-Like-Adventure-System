void main()
{
  object oPC = GetPCSpeaker();
  effect eStat = EffectAbilityIncrease(ABILITY_INTELLIGENCE, 1);
  ApplyEffectToObject(DURATION_TYPE_PERMANENT, eStat, oPC);
   // Set the variables
    SetLocalInt(GetPCSpeaker(), "used_rock", 1);
}
