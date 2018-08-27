#include "nw_i0_tool"
//::///////////////////////////////////////////////
//:: Name x2_def_ondeath
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Default OnDeath script
*/
//:://////////////////////////////////////////////
//:: Created By: Keith Warner
//:: Created On: June 11/03
//:://////////////////////////////////////////////

void main()
{
object oPC = GetLastKiller();

    SetLocalInt(GetArea(GetLastKiller()), "madman", 3);
    AddJournalQuestEntry("haunted", 5040, oPC, TRUE, FALSE);

while (GetIsObjectValid(GetMaster(oPC)))
   {
   oPC=GetMaster(oPC);
   }

if (!GetIsPC(oPC)) return;

RewardPartyXP(100, oPC, TRUE);

    ExecuteScript("nw_c2_default7", OBJECT_SELF);
}
