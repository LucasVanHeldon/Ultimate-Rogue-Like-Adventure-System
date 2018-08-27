//::///////////////////////////////////////////////
//:: Default: On User Defined
//:: NW_C2_DEFAULTD
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determines the course of action to be taken
    on a user defined event.
*/
//:://////////////////////////////////////////////
//:: Created By: Don Moar
//:: Created On: April 28, 2002
//:://////////////////////////////////////////////
//:: Updated By: Peter Westergaard
//:: Updated For: Troll Regeneration
//:: Updated On: Nov 7, 2002
//:: Based heavily on code written by
//:: Magnifico Uno in Sept. 2002
//:: for Troll Regeneration
//:://////////////////////////////////////////////
#include "PW_INC_TROLL"

void main()
{
    // Declare important variables here.
    int nPermDamage; // The amount of non-regenerable damage the troll has suffered.
    int nTempDamage; // The amount of regenerable damage the troll has suffered
    object oTroll = OBJECT_SELF;
    object oKiller; // The creature who killed the troll.
    // Effects to be used in applying visual or other effects.
    effect eKO;
    effect eRes;
    effect eBurn;

    // enter desired behaviour here
    switch ( GetUserDefinedEventNumber () )
    {
    case 1005:
        // Troll On-Physical Attack
        break;
    case 1006:
        // Troll On-Damage
        nPermDamage = CalculateTrollDamage(); // Function defined in pw_inc_troll
        break;
    case 1007:
        // Troll On-Death
        nPermDamage = CalculateTrollDamage(); // Function defined in pw_inc_troll
        nTempDamage = GetLocalInt( OBJECT_SELF, "nTempDamage" );
        oKiller = GetLastKiller(); // Who killed the Troll?
        if (nPermDamage >= GetMaxHitPoints() )
            // We have finally done true lethal damage to the troll.  Destroy it.
            DestroyMe();    // Function defined in pw_inc_troll
        else
        {
            // Troll is likely to survive, if we get to this point in the script.
            // We have not done true lethal damage, but since we are running the
            // OnDeath event, it must have brought the troll's HP to zero or lower.
            // First Check:  Is the troll already 'down'?
            if ( GetLocalInt( OBJECT_SELF, "bTrollDown" ) == TRUE )
            {
                //Troll has already been knocked down (i.e. it is "dead-but-regenerating".
                // Did it take ANY fire damage this attack? If so, burn the troll.
                // (We can just finish it off quickly this way).
                if ( GetDamageDealtByType( DAMAGE_TYPE_FIRE ) > 0 )
                {
                    // Destroy the Troll outright.  It's helpless and burning.
                    DestroyMe();
                    return;
                } else if ( GetBaseItemType( GetItemInSlot( INVENTORY_SLOT_LEFTHAND, oKiller ) ) == BASE_ITEM_TORCH )  {
                    // The PC had a torch equipped in their hand (either one).
                    // Destroy the Troll outright.  It's helpless and burning.
                    // ----
                    // Originally, I had wanted to include this in the On Physical Attacked
                    // event, and it would kill the troll, but not credit the killer with XP.
                    // So I opted for this solution, which requires the torch-weilder to actually
                    // KILL the Troll (and since it has 1HP, and is prone, this shouldn't be difficult).
                    AssignCommand ( oKiller, ActionPlayAnimation ( ANIMATION_LOOPING_GET_LOW , 1.0 , 1.5 ) );
                    AssignCommand ( oKiller, ActionDoCommand ( AssignCommand ( oTroll, DestroyMe() ) ) );
                    // Perhaps there is a cleaner way to do this, but what I was
                    // attempting to do above is to force the PC to kneel at the
                    // troll's corpse as an action, then only when that action is
                    // complete, force the PC to signal to the troll to destroy itself.
                    // It works, even though that second command is a little odd to read.
                    return;

                } else {
                    // Else no fire damage was dealt, so troll stays down and still alive.
                    // Since it took damage this turn, call the "Knockdown" UDE that
                    // resurrects the troll and applies knockdown. This will prevent the
                    // PC from 'killing' the troll with non-fire damage, since 'killing'
                    // the troll leaves a corpse which cannot be interacted with.
                    SignalEvent ( OBJECT_SELF, EventUserDefined (2400));
                }
            } else {
                // Knock the troll down from a standing position (i.e the troll just received
                // damage which took it from positive HP to 0 or negative HP, but it has
                // not sustained 'lethal' damage yet.

                // We will 'simulate' the troll regeneration by repeatedly calling the
                // "pw_inc_healtroll" script, which adds 5 HP to the troll, and when it
                // reaches a positive HP total, resurrects and heals the troll.
                SignalEvent ( OBJECT_SELF, EventUserDefined (2400));
                SetLocalInt( OBJECT_SELF, "bTrollDown", TRUE );
            }
            // The troll has survived because not enough permanent damage was done
            // to the troll.  The troll should already be looping through UDE 2401,
            // which handles regeneration.  UDE 2401 is first called from within the
            // "CalculateDamage()" function defined in the include file.

        }
        break;

    case 2400:
        // Troll Knockdown - the troll has accumulated more than its MaxHP in damage.  but it
        // is NOT dead at this point because enough of that damage is non-permanent (i.e.
        // regenerable - not fire or acid).  Thus, we have to strip away the XP the Killer
        // and their faction was just awarded.
        RollbackPartyXP ();  // Function defined in include file "pw_inc_troll".
        FloatingTextStringOnCreature ( "The Troll is not dead!", OBJECT_SELF, FALSE );
        // Resurrect and Knockdown the Troll, so that it appears to "die" into a Knockdown pose.
        // If we put these same actions into the OnDeath script, they do not have any effect, but
        // here in a UDE called immediately from within the OnDeath script, they perform as we hope.
        eRes = EffectResurrection ( );
        ApplyEffectToObject ( DURATION_TYPE_INSTANT , eRes, OBJECT_SELF );
        eKO = EffectKnockdown ( );
        ApplyEffectToObject ( DURATION_TYPE_PERMANENT , eKO, OBJECT_SELF );

        break;

    case 2401:
        // Troll Regeneration - This UDE is called as soon as the first regenerable damage
        // is taken by the troll, (determined within the "CalculateDamage()" function defined
        // in the include file) and recursively calls itself until all regenerable damage
        // is healed.
        nPermDamage = GetLocalInt ( OBJECT_SELF, "nPermDamage" );
        nTempDamage = GetLocalInt ( OBJECT_SELF, "nTempDamage" );
        oKiller = GetLocalObject ( OBJECT_SELF, "oKiller" );

        if ( nTempDamage > 0 )
        {
            // Regenerate 5 HP, unless there are fewer than 5 "regenerable" hits left on
            // the troll!  (In which case, just heal up what's remaining).
            int nHP = ( nTempDamage < 5 ) ? nTempDamage : 5 ;
            nTempDamage -= nHP;
            SetLocalInt ( OBJECT_SELF, "nTempDamage", nTempDamage );

            // Sound effect of troll regenerating (one each depending if
            // troll is "dead" or still standing
            if (GetLocalInt (OBJECT_SELF, "bTrollDown") == TRUE)
               PlaySound("al_na_sludggrat2");  // Sound for dead troll regenerating
               else PlaySound("as_mg_telepin1"); // Sound for living troll regenerating

            if ( ( nTempDamage + nPermDamage ) < GetMaxHitPoints() && GetLocalInt( OBJECT_SELF, "bTrollDown" ) == TRUE )
            {
                // The troll has just moved back into positive HP from negative.
                // So we need to resurrect and possibly heal up the troll a tiny bit.
                // Technically, instead of resurrection, we should be locating and
                // removing the Knockdown effect, but this code works as expected.
                // Perhaps resurrection or healing removes knockdown as a sideffect.
                effect eRes = EffectResurrection ( );
                ApplyEffectToObject ( DURATION_TYPE_INSTANT , eRes, OBJECT_SELF );
                effect eHeal = EffectHeal ( ( GetMaxHitPoints() - ( nTempDamage + nPermDamage ) ) - GetCurrentHitPoints() );
                ApplyEffectToObject ( DURATION_TYPE_INSTANT , eHeal, OBJECT_SELF );
                // Make the troll pursue its killer when it stands back up.
                ActionAttack ( oKiller );
                // And of course, the troll isn't considered "down" any more.
                SetLocalInt( OBJECT_SELF, "bTrollDown", FALSE );
            } else if ( GetLocalInt( OBJECT_SELF, "bTrollDown" ) == FALSE ) {
                // Troll is already standing, but needs to heal. Heal the troll by nHP hit points.
                effect eHeal = EffectHeal ( nHP );
                ApplyEffectToObject ( DURATION_TYPE_INSTANT , eHeal, OBJECT_SELF );
            }
            // DelayCommand( 6.0, ExecuteScript( "pw_inc_healtroll", OBJECT_SELF ));
            if ( nTempDamage > 0 )
                // We need to continue regenerating, if there are additional non-permanent wounds, otherwise
                // we're all healed up and can stop recursing until we accumulate more temporary damage.
                DelayCommand( 6.0, SignalEvent (OBJECT_SELF, EventUserDefined(2401) ) );

        }
        break;
    }

    return;

}
