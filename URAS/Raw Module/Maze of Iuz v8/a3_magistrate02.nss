//::///////////////////////////////////////////////
//:: Name A3_Magistrate
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

  int nGold = GetGold(oPC);
  int nFine = (nGold/2);
  int nBribe = (nFine/4);

  SetLocalInt(oPC, "PCGift", nBribe);

  SetCustomToken(8005, IntToString(nBribe));
}

