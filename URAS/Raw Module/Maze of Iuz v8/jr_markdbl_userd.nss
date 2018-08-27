//::///////////////////////////////////////////////
//:: Name x2_def_userdef
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Default On User Defined Event script
*/
//:://////////////////////////////////////////////
//:: Created By: Keith Warner
//:: Created On: June 11/03
//:://////////////////////////////////////////////
#include "nw_i0_generic"

const int EVENT_USER_DEFINED_PRESPAWN = 1510;
const int EVENT_USER_DEFINED_POSTSPAWN = 1511;
void main()
{
    int nUser = GetUserDefinedEventNumber();

    if(nUser == EVENT_HEARTBEAT ) //HEARTBEAT
    {

    }
    else if(nUser == EVENT_PERCEIVE) // PERCEIVE
    {
        object oTarget;
        object oPC = GetLastPerceived();

        if (!GetIsPC(oPC)) return;

        if (!GetLastPerceptionSeen()) return;
        int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

        if (DoOnce==TRUE) return;

        SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE); //Makes sure that this is only done once!!!

        if (GetLocalInt(oPC, "Markessa")>= 1) //Checks to see if PC has already fought with the real Markessa
           {
               oTarget = OBJECT_SELF;

               AdjustReputation(oPC, oTarget, -100);

               SetIsTemporaryEnemy(oPC, oTarget);

               ActionAttack(oPC);

               DetermineCombatRound(oPC);

           }

    }
    else if(nUser == EVENT_END_COMBAT_ROUND) // END OF COMBAT
    {

    }
    else if(nUser == EVENT_DIALOGUE) // ON DIALOGUE
    {

    }
    else if(nUser == EVENT_ATTACKED) // ATTACKED
    {

    }
    else if(nUser == EVENT_DAMAGED) // DAMAGED
    {

    }
    else if(nUser == 1007) // DEATH  - do not use for critical code, does not fire reliably all the time
    {
        SetLocalInt(GetModule(), "Nari", 1);

        if (GetLocalInt(GetModule(), "double_help") <= 1)
        {
        object oTarget;
        object oSpawn;
        location lTarget;
        oTarget = GetWaypointByTag("WP_MarkessasBodyguard");

        lTarget = GetLocation(oTarget);

        oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "markessasbodygua", lTarget);
        }
    }
    else if(nUser == EVENT_DISTURBED) // DISTURBED
    {

    }
    else if (nUser == EVENT_USER_DEFINED_PRESPAWN)
    {

    }
    else if (nUser == EVENT_USER_DEFINED_POSTSPAWN)
    {

    }


}


