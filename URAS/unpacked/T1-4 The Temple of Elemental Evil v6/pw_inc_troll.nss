//::///////////////////////////////////////////////
//:: Troll Damage Calculation
//:: PW_INC_TROLL
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Assess Incoming Damage to the troll (permanent - fire and acid, vs.
    temporary - all other damage)  If Permanently Damaged beyond Max HP,
    initiate Troll self-destruction.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 16, 2001
//:://////////////////////////////////////////////
//:: Updated By: Peter Westergaard
//:: Updated For: Troll Regeneration
//:: Updated On: Nov 7, 2002
//:: Based heavily on code written by
//:: Magnifico Uno in Sept. 2002
//:: for Troll Regeneration
//:://////////////////////////////////////////////

void FreezePartyXP()
{
    // Set a number of local variables on the troll, one for each member of the troll killer's
    // faction who is a PC.  These local variables will be named "oKiller_" and "nKiller_"
    // plus a number, from 01 to whatever the number of PC's in the party is.
    string sObjPrefix = "oKiller_";
    string sIntPrefix = "nKiller_";
    int nPrefixLength = 8;
    int nPC_pop = GetLocalInt ( OBJECT_SELF, "nPC_pop" );
    string sPC_suffix = IntToString( nPC_pop );
    object oKiller = GetLastKiller ();
    object oTestKiller = GetFirstFactionMember ( oKiller );
    while ( GetIsObjectValid ( oTestKiller ) )
    {
        nPC_pop++;
        sPC_suffix = IntToString( nPC_pop );
        SetLocalInt ( OBJECT_SELF, "nPC_pop", nPC_pop );
        SetLocalObject ( OBJECT_SELF, sObjPrefix + sPC_suffix , oTestKiller );
        SetLocalInt ( OBJECT_SELF, sIntPrefix + sPC_suffix , GetXP ( oTestKiller ) );
        oTestKiller = GetNextFactionMember ( oKiller );
    }
}

void RollbackPartyXP()
{
    // Use the local variables defined in FreezePartyXP() to roll back the party's XP,
    // From the highest down.
    int nPC_pop = GetLocalInt ( OBJECT_SELF, "nPC_pop" );
    string sPC_suffix = IntToString( nPC_pop );
    string sObjPrefix = "oKiller_";
    string sIntPrefix = "nKiller_";
    object oTestKiller = GetLocalObject ( OBJECT_SELF, sObjPrefix + IntToString( nPC_pop ) );
    while ( GetIsObjectValid ( oTestKiller ) )
    {
        SetXP ( oTestKiller , GetLocalInt ( OBJECT_SELF, sIntPrefix + sPC_suffix ) );
        SendMessageToPC ( oTestKiller, "The Troll's wounds begin to close!" );
        DeleteLocalInt ( OBJECT_SELF , sObjPrefix + sPC_suffix );
        DeleteLocalInt ( OBJECT_SELF , sIntPrefix + sPC_suffix );
        nPC_pop--;
        sPC_suffix = IntToString( nPC_pop );
        SetLocalInt (OBJECT_SELF, "nPC_pop" , nPC_pop );
        oTestKiller = GetLocalObject ( OBJECT_SELF, sObjPrefix + sPC_suffix );
    }
}

void DestroyMe()
{
    // Make a bonfire briefly appear on the Troll's body to let us know it is dead.
    // Then destroy the troll.  This function is called from the UDE "On-Death" event
    // for the troll, in cases where we want the troll destroyed.  Currently, these
    // are three:  1) fire/acid damage done in excess of the troll's max HP.  2)
    // any fire damage done to a "fallen-but-regenerating" troll.  3) any damage done
    // to a "fallen-but-regenerating" troll by a creature who is holding a torch.
    effect eBurn = EffectVisualEffect( VFX_IMP_FLAME_M );
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eBurn, OBJECT_SELF );
    SendMessageToPC ( GetLastKiller() , "The troll is dead!" );
    DestroyObject( OBJECT_SELF, 1.0f );
    SetIsDestroyable (TRUE, FALSE, FALSE);
    return;
}


int CalculateTrollDamage()
{
    // This script is called from the UDE On-Damaged and UDE On-Death events.
    // Its purpose is to calculate the PERMANENT (i.e. fire/acid) damage, and TEMPORARY
    // (i.e. all other types) damage, and to store these values in a pair of
    // local variables, nPermDamage and nTempDamage respectively.

    object oDamager = GetLastDamager ();

    // Set some integers to represent newly-applied damage of permanent types.
    int nFireDamage = GetDamageDealtByType( DAMAGE_TYPE_FIRE );
    if (nFireDamage < 0)
        nFireDamage = 0;
        else SendMessageToPC ( oDamager , "The fire does permanent damage to the troll" );
    int nAcidDamage = GetDamageDealtByType( DAMAGE_TYPE_ACID );
    if (nAcidDamage < 0)
        nAcidDamage = 0;
        else SendMessageToPC ( oDamager , "The acid does permanent damage to the troll" );

    int nNewPermDamage = nFireDamage + nAcidDamage;

    // First set some integers to represent newly-applied damage.
    int nPermDamage = GetLocalInt( OBJECT_SELF, "nPermDamage" );
    int nTempDamage = GetLocalInt( OBJECT_SELF, "nTempDamage" );

    // Calculate the Temporary (i.e. regenerable) Damage done this round
    //  = MaxHP - NewPermDmg - OldPermDmg - OldTempDmg - CurHP
    int nNewTempDamage = GetMaxHitPoints() - nNewPermDamage - nPermDamage - nTempDamage - GetCurrentHitPoints();

    // Check if Troll needs to start regenerating, or if it is already regenerating
    if ( (nTempDamage == 0) && (nNewTempDamage > 0) )  // This is the 'first' temp damage, so start regen!
        DelayCommand ( 6.0, SignalEvent( OBJECT_SELF, EventUserDefined ( 2401 ) ) );

    // Recalculate the temporary damage counter and the permanent damage counter.
    nTempDamage += nNewTempDamage;
    SetLocalInt( OBJECT_SELF, "nTempDamage", nTempDamage );
    nPermDamage += nNewPermDamage;
    SetLocalInt( OBJECT_SELF, "nPermDamage", nPermDamage );

    // return the total amount of non-regenerative damage.  This will help the calling
    // scripts determine if the Troll is "Dead" or "Dead-but-regenerating".
    return nPermDamage;

    // We will let the calling scripts determine whether the Troll needs to regenerate.
    // Also, note that the above workflow must be invoked during OnDamaged and OnDeath events,
    // because "lethal" damage triggers that OnDeath but not OnDamaged and "non-lethal" damage
    // only triggers OnDamaged.  ("Lethal" damage being damage which is greater than the NPC's
    // remaining HP).
}
