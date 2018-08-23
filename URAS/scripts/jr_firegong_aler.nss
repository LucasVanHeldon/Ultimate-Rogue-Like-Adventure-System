//::///////////////////////////////////////////////
//:: Name jr_firegong_aler
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: 09/15/2004 10:23PM
//:://////////////////////////////////////////////

void main()
{
 PlaySound("as_cv_gongring2"); //Play Gong sound

 object oPC = GetLastUsedBy();
 if (!GetIsPC(oPC)) return; //if "last used by" is not a PC then do nothing

 int nAlert;
 nAlert = GetLocalInt(oPC, "AlertGuards"); //Gets local integer on PC

 SetLocalInt(oPC, "AlertGuards", 1); //Sets Local integer on PC to 1

}
