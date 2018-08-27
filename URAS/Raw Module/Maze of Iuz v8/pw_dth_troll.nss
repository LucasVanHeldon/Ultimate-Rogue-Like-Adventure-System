//::///////////////////////////////////////////////
//:: Based On Script:
//::-------------------
//:: Default:On Death
//:: NW_C2_DEFAULT7
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Shouts to allies that they have been killed
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 25, 2001
//:://////////////////////////////////////////////
//:: Updated By: Peter Westergaard
//:: Updated For: Troll Regeneration
//:: Updated On: Nov 7, 2002
//:: Based heavily on code written by
//:: Magnifico Uno in Sept. 2002
//:: for Troll Regeneration
//:://////////////////////////////////////////////
#include "NW_I0_GENERIC"
#include "PW_INC_TROLL"

void main()
{
//:://////////////////////////////////////////////
//:: Troll Regeneration Changes Follow
//:://////////////////////////////////////////////

    // Set up two local integers to track the identity of the PC and their XP
    // just prior to killing the Troll.  (This will be stripped from them in the Knockdown script)
    // (Note: This may or may not function properly in multi-player. Works fine in Solo).
    // (Note: This code was originally placed in the UDE, but it appears that XP is increased
    // between OnDeath and the UDE!  (i.e. If you place this code in the UDE, the PC loses no XP).

    FreezePartyXP();    // Function defined in include file "pw_inc_troll".
    // If the module will be running with a custom XP system, the above code will need to
    // be adapted to properly freeze Party XP.  One such example for a system where only the
    // actual KILLER gets any XP for the kill, and not members of their faction, would be
    // prepared by uncommenting the two following commands, and commenting out the call
    // to FreezePartyXP();
    //        SetLocalObject( OBJECT_SELF, "oKiller_1", GetLastKiller() );
    //        SetLocalInt( OBJECT_SELF, "nKiller_1", GetXP( GetLastKiller() ) );

//:://////////////////////////////////////////////
//:: Troll Regeneration Changes End
//:://////////////////////////////////////////////

    int nClass = GetLevelByClass(CLASS_TYPE_COMMONER);
    int nAlign = GetAlignmentGoodEvil(OBJECT_SELF);
    if(nClass > 0 && (nAlign == ALIGNMENT_GOOD || nAlign == ALIGNMENT_NEUTRAL))
    {
        object oKiller = GetLastKiller();
        AdjustAlignment(oKiller, ALIGNMENT_EVIL, 5);
    }

    SpeakString("NW_I_AM_DEAD", TALKVOLUME_SILENT_TALK);
    //Shout Attack my target, only works with the On Spawn In setup
    SpeakString("NW_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);
    if(GetSpawnInCondition(NW_FLAG_DEATH_EVENT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1007));
    }
}

