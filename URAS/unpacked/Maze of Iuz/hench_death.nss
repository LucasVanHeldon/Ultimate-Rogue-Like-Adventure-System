// Henchman OnDeath script.
void main()
{
    ExecuteScript( "x0_ch_hen_death", OBJECT_SELF);

    effect eRevive = EffectLinkEffects( EffectResurrection(), EffectHeal( GetMaxHitPoints(OBJECT_SELF)));
    ApplyEffectToObject( DURATION_TYPE_INSTANT, eRevive, OBJECT_SELF);
    JumpToObject( GetWaypointByTag( "NW_DEATH_TEMPLE"));

}

