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
        object oDamager = GetLastDamager();
        int iMyHitPoints = GetCurrentHitPoints(OBJECT_SELF);
        int iMyHPPercentage = (iMyHitPoints / GetMaxHitPoints(OBJECT_SELF) * 100);
        if(iMyHitPoints <= 65 || GetLocalInt(GetArea(oDamager), "Boulder")==0)
            {
//                SetPlotFlag(OBJECT_SELF, TRUE);
                SetLocalInt(GetModule(), "Boulder", 1);
                AdjustReputation(oDamager, OBJECT_SELF, 100);
                SetPCLike(oDamager, OBJECT_SELF);
                ClearAllActions(TRUE);
                AssignCommand(oDamager, ActionWait(3.0f));
                AssignCommand(OBJECT_SELF, ActionSpeakString("ARGH!! DESTROY THE PASS!!!", TALKVOLUME_SHOUT));
                ActionWait(2.0f);
                object oTarget;
                oTarget = GetObjectByTag("DragonStatue");

//Visual effects can't be applied to waypoints, so if it is a WP
//the VFX will be applied to the WP's location instead

                int nInt;
                nInt = GetObjectType(oTarget);

                effect eEffect;
                eEffect = EffectVisualEffect(VFX_FNF_SCREEN_SHAKE);

                if (nInt != OBJECT_TYPE_WAYPOINT)
                   DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oTarget));
                else
                   DelayCommand(3.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, GetLocation(oTarget)));

                DelayCommand(3.0, DestroyObject(oTarget, 3.0));

                PlaySound("as_na_rockfalgl2");
                location lTarget;
                oTarget = GetWaypointByTag("WP_Boulder01");

                lTarget = GetLocation(oTarget);

                DelayCommand(4.0, CreateObjectVoid(OBJECT_TYPE_PLACEABLE, "bouldergate", lTarget));

                eEffect = EffectVisualEffect(353);

                DelayCommand(4.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, lTarget));

                oTarget = GetWaypointByTag("WP_Boulder02");

                lTarget = GetLocation(oTarget);

                DelayCommand(4.0, CreateObjectVoid(OBJECT_TYPE_PLACEABLE, "bouldergate", lTarget));

                eEffect = EffectVisualEffect(VFX_IMP_DUST_EXPLOSION);

                DelayCommand(4.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, lTarget));

                oTarget = GetWaypointByTag("WP_Boulder03");

                lTarget = GetLocation(oTarget);

                DelayCommand(4.0, CreateObjectVoid(OBJECT_TYPE_PLACEABLE, "bouldergate", lTarget));

                eEffect = EffectVisualEffect(353);

                DelayCommand(4.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, lTarget));

                oTarget = GetWaypointByTag("WP_Boulder04");

                lTarget = GetLocation(oTarget);

                DelayCommand(4.0, CreateObjectVoid(OBJECT_TYPE_PLACEABLE, "bouldergate", lTarget));

                eEffect = EffectVisualEffect(VFX_IMP_DUST_EXPLOSION);

                DelayCommand(4.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, lTarget));

                oTarget = OBJECT_SELF;

                DelayCommand(3.0, AdjustReputation(oDamager, oTarget, -100));

                DelayCommand(3.0, SetIsTemporaryEnemy(oDamager, oTarget));

                ActionAttack(oDamager);

                DetermineCombatRound(oDamager);

/*
                AssignCommand(OBJECT_SELF, ActionSpeakString("You'll pay for this! Mark my words! This is NOT over!", TALKVOLUME_TALK));
                AssignCommand(OBJECT_SELF, ActionMoveToObject(GetObjectByTag("WP_MarkessaEscape"), TRUE));
                AddJournalQuestEntry("SlaveLords", 2510, oDamager, TRUE, FALSE);
                SetLocalInt(GetModule(), "Markessa", 2);

                object oTarget;
                oTarget = OBJECT_SELF;

                DelayCommand(5.8, SetPlotFlag(OBJECT_SELF, FALSE));
                DelayCommand(6.0, DestroyObject(oTarget, 0.0));
*/            }
        else return;
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


