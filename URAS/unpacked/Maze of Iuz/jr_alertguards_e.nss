//::///////////////////////////////////////////////
//:: Name jr_actv_enc_xxxx
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  Activates an inactive encounter when
  a local int = 1
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
nInt=GetLocalInt(oPC, "AlertGuards");

if (!(nInt == 1))  //if the integer does not equal 1, then do nothing
   return;

   SetEncounterActive(TRUE, OBJECT_SELF);  //if the integer == 1, then activate encounter

}
