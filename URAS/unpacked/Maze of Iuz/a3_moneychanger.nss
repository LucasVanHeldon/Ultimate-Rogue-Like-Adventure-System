//::///////////////////////////////////////////////
//:: Name A3_Moneychanger
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: April 14th, 2006
//:://////////////////////////////////////////////


void main()
{
  object oPC = GetPCSpeaker();

  int nGold = GetLocalInt(GetModule(), "PCGold");

  SetCustomToken(7500, IntToString(nGold));
}
