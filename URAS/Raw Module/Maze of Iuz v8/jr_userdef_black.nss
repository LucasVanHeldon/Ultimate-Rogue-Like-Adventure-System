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
#include "nw_i0_2q4luskan"

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

/*
Blackthorn is actually an Ogre Mage in diguise, sent here by the Slave Lords of
Suderham to keep an eye on Markessa and this operation. Markessa is the only person
aware of this and agrees that it is best this remains a secret to preserve her
authority. Blackthorn is the personal representative of Edralve.
*/
        object oDamager = GetLastDamager(); // I know this is defined earlier, but where I said to put it that variable will have fallen out of scope, IINM
        int iMyHitPoints = GetCurrentHitPoints(OBJECT_SELF);
        int iMyHPPercentage = (iMyHitPoints / GetMaxHitPoints(OBJECT_SELF) * 100);
        if(iMyHitPoints <= 100)
        {
            //SetPlotFlag(OBJECT_SELF, TRUE);
            //SetPCLike(oDamager, OBJECT_SELF);
            ClearAllActions(TRUE);
            CreateObject(OBJECT_TYPE_WAYPOINT, "Blackthorn", GetLocation(OBJECT_SELF));
            ActionSpeakString("RAARGH! You do not know who you're dealing with!!!");
            PlaySound("vs_nx2ogrem_attk");
//Visual effects can't be applied to waypoints, so if it is a WP
//apply to the WP's location instead


            object oSpawn;
            location lTarget;
            object oTarget = oDamager;

            lTarget = GetLocation(GetWaypointByTag("Blackthorn"));

            //DelayCommand(2.0, CreateObjectVoid(OBJECT_TYPE_CREATURE, "blackthorn_ogre", lTarget));
            if (GetLocalInt(GetArea(oDamager), "ogremage") == 0)
            {
                CreateObject(OBJECT_TYPE_CREATURE, "blackthorn_ogre", lTarget);
                SetLocalInt(GetArea(oDamager), "ogremage", 1);
            }
            effect eEffect;
            eEffect = EffectVisualEffect(VFX_IMP_POLYMORPH);

            DelayCommand(1.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, lTarget));

            //int nInt;
            //nInt = GetObjectType(OBJECT_SELF);

            //if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_UNSUMMON), OBJECT_SELF);
            //else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_UNSUMMON), GetLocation(OBJECT_SELF));

            DestroyObject(OBJECT_SELF, 2.0);

        }
    }
    else if(nUser == 1007) // DEATH  - do not use for critical code, does not fire reliably all the time
    {

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


