/*   Climbing PC's
Date Last Modified: 06/24/02 12:18 AM
By: Morgosha

Its best launched from a conversation file with a placeable object, presumable a pile of rocks or something like that. The script works flawlessly for me every time.
*/


void main()
{
    object oPlayer = GetLastUsedBy();
    int nStrMod = GetAbilityModifier (ABILITY_STRENGTH, oPlayer);
    effect eDamage = EffectDamage (d3(1), DAMAGE_TYPE_BLUDGEONING);
    int nRoll = d20();

    if ( (nRoll + nStrMod) >= 14)
    {
        object oWaypoint = GetWaypointByTag ("WP_Rope_Entrance");
        AssignCommand (oPlayer, ActionJumpToObject (oWaypoint));
        ActionSpeakString ("You've managed to climb up the rope to the curtain wall safely.", TALKVOLUME_TALK);
    }
    else
    if ( (nRoll + nStrMod) <= 13 && (nRoll + nStrMod) >= 12)
    {
        ActionSpeakString ("You've failed to climb the curtain wall", TALKVOLUME_TALK);
    }
    else
    {
        ApplyEffectToObject (DURATION_TYPE_INSTANT, eDamage, oPlayer);
        ActionSpeakString ("You've fallen and suffered injuries", TALKVOLUME_TALK);
    }
 }
