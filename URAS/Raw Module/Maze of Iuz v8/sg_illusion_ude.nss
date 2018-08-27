//::///////////////////////////////////////////////
//:: Custom User Defined Event
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
 Place in the OnUserDefinedEvent handler for
 the appropriate creature, then edit that
 creature's OnSpawn script to generate any of
 the desired events.
*/


void main()
{
    int nEvent = GetUserDefinedEventNumber();

    if (nEvent == EVENT_HEARTBEAT) {

    }
    else if (nEvent == EVENT_PERCEIVE)
      {

        object oPC = GetLastPerceived();

        if (!GetIsPC(oPC)) return;

        if (!GetLastPerceptionSeen()) return;

        if (!GetHasSpellEffect(SPELL_TRUE_SEEING, oPC)) return;

        ClearAllActions();

        ActionSpeakString("Your spell of TRUE SEEING dispells this illusion!");

        object oTarget;
        oTarget = OBJECT_SELF;

        int nInt;
        nInt = GetObjectType(oTarget);

        if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_UNSUMMON), oTarget);
        else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_UNSUMMON), GetLocation(oTarget));

        DestroyObject(oTarget, 2.0);

      }
    else if (nEvent == EVENT_DIALOGUE) {

    } else if (nEvent == EVENT_DISTURBED) {

    } else if (nEvent == EVENT_ATTACKED) {

    }
    else if (nEvent == EVENT_DAMAGED)
      {

        object oPC = GetLastHostileActor();

        if (!GetIsPC(oPC)) return;

        ClearAllActions();

        ActionSpeakString("This creature suddenly disappears like an illusion!");

        object oTarget;
        oTarget = OBJECT_SELF;

        int nInt;
        nInt = GetObjectType(oTarget);

        if (nInt != OBJECT_TYPE_WAYPOINT) ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_UNSUMMON), oTarget);
        else ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_UNSUMMON), GetLocation(oTarget));

        DestroyObject(oTarget, 2.0);

      }
    else if (nEvent == EVENT_END_COMBAT_ROUND) {

    } else if (nEvent == EVENT_SPELL_CAST_AT) {

    }

}


