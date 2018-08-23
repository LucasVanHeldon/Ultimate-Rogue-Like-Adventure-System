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

while (GetIsObjectValid(GetMaster(oPC)))
   {
   oPC=GetMaster(oPC);
   }

if (!GetIsPC(oPC)) return;

    AdjustAlignment(oPC, ALIGNMENT_EVIL, 2);
    AddJournalQuestEntry("Flubbort", 1004, oPC, TRUE, FALSE);
    SetLocalInt(oPC, "growl2", 1);
    ExecuteScript("nw_c2_default7", OBJECT_SELF);
}
