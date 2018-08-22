//:: Name jr_actv_enc_xxxx
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  Activates an inactive encounter when
  a local int = 0
*/
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: Sep 18 , 2004
//:://////////////////////////////////////////////

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

int nInt;
nInt=GetLocalInt(oPC, "FlindPass");

if (!(nInt == 0))  //if the integer does not equal 0, then do nothing
   return;

   SetEncounterActive(TRUE, OBJECT_SELF);  //if the integer == 0, then activate encounter

}
