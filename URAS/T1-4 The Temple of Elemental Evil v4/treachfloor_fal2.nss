void main()
{
  effect eDam;
  object oPitvictim = GetPCSpeaker(); //That's the PC who might fall
  location lLoc = GetLocation(oPitvictim); //The initial place of the falling PC
  object oWay = GetWaypointByTag("TF_PITFALL"); //That's where he is going to land
  int rSave = ReflexSave(oPitvictim, 20, SAVING_THROW_TYPE_TRAP, OBJECT_SELF);//Reflex saving throw@20

  if (rSave==0)
    {
      eDam = EffectDamage(d6(3), DAMAGE_TYPE_BLUDGEONING); //The damage roll
      ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPitvictim);
      AssignCommand(oPitvictim, ActionJumpToLocation(GetLocation(oWay)));
      AssignCommand(oPitvictim,ActionPlayAnimation(ANIMATION_LOOPING_SIT_CROSS, 1.0, 2.0));
      FloatingTextStringOnCreature("ouch...", oPitvictim, FALSE);
    }
  else
    {
      ActionSpeakString ("As soon as you step onto the ledge, it collapses beneath you, but you manage to safely fall back away from the pit.", TALKVOLUME_SHOUT);
    }

  SetLocalInt(OBJECT_SELF, "west ledge", 1); //Setting local integer, so that in the conversation it will only happen once

}
