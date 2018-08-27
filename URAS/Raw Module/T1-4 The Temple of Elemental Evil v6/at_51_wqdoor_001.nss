/*
void main()
{
  object oClicker = GetClickingObject();
  object oTarget = GetTransitionTarget(OBJECT_SELF);

  SetAreaTransitionBMP(AREA_TRANSITION_RANDOM);

  AssignCommand(oClicker,JumpToObject(oTarget));
}
*/
void main()
{

  object oPC = GetClickingObject();
  object oClicker = GetClickingObject();
  object oTarget = GetTransitionTarget(OBJECT_SELF);

if ((GetLevelByClass(CLASS_TYPE_SORCERER, oPC)>0)||
    (GetLevelByClass(CLASS_TYPE_WIZARD, oPC)>0)||
    (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC)>0))
   {
      SetAreaTransitionBMP(AREA_TRANSITION_RANDOM);

      AssignCommand(oClicker,JumpToObject(oTarget));
   }

else
   {
      FloatingTextStringOnCreature("YOU ARE DENIED ENTRANCE!!!", oPC);

      DelayCommand(2.0, FloatingTextStringOnCreature("ONLY THOSE OF THE ARCANE MAY ENTER!!!", oPC));
   }
}

