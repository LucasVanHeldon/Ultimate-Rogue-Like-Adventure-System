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
#include "nw_i0_tool"
void main()
{
    object oPC = GetLastKiller();

    while (GetIsObjectValid(GetMaster(oPC)))
        {
            oPC=GetMaster(oPC);
        }

    if (!GetIsPC(oPC)) return;
    int iSlaverDead = GetJournalQuestExperience("SlaveLords");
    AddJournalQuestEntry("SlaveLords", 2400, oPC, TRUE, FALSE);
    ExecuteScript("nw_c2_default7", OBJECT_SELF);
}
