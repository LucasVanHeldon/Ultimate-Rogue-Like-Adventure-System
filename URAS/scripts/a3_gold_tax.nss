//::///////////////////////////////////////////////
//:: Name A3_Moneychanger
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
     15% Tax to PC Gold.
*/
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: April 14th, 2006
//:://////////////////////////////////////////////


void main()
{
  object oPC = GetPCSpeaker();

  int nGold = GetLocalInt(GetModule(), "PCGold");

  int nTax = (nGold) * 15 / 100;  //Gold x 15% Tax

  SetLocalInt(oPC, "PCTax", nTax);

  SetCustomToken(7501, IntToString(nTax));
}
