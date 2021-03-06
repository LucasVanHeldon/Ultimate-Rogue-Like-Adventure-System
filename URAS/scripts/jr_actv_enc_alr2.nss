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

//Put this OnEnter of the Inactive Encounter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

if (DoOnce==TRUE) return;

int nInt;
nInt=GetLocalInt(oPC, "Alert02");   //replace "xxxx" with your local integer; ie. "Activate"

if (!(nInt == 1))  //if the integer does not equal 1, then do nothing
   return;

   SetEncounterActive(TRUE, OBJECT_SELF);  //if the integer == 1, then activate encounter
   SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE);
}
