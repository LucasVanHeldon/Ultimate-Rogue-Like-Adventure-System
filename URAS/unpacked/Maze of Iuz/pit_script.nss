/*
1. Create a stand alone room or corridor with no exit.  That will be the place where
your victim will land.

2. Place a waypoint in that room with the name WP_PITFALL

3. Create a new Tangle Trap (Average).

4. You can either makes it disarmable or not, it'S up to you.

5. In the Trap tab, in the OnTrapTriggered box, put the pit script.

6. Select it in your custom traps and paint the area to "trap".

7. In the "pit" room, place a boulder from the Placeable objects list. This item
will be used to climb up.

8. Make the boulder usable, and in the OnUse script, put the climbing script that I
borrowed from.. errr... someone I can't remember.

9. Put a waypoint back to the trap room where the character will appear when he will
climb back and name it "ClimbPoint".

Nouny~

PIT SCRIPT
*/

void main()
{
effect eDam;
object oPitvictim = GetEnteringObject(); //That's the PC who might fall
if (oPitvictim == (GetObjectByTag("Madman"))) return;
location lLoc = GetLocation(oPitvictim); //The initial place of the falling PC
object oWay = GetWaypointByTag("WP_PITFALL"); //That's where he is going to land
int rSave = ReflexSave(oPitvictim, 20, SAVING_THROW_TYPE_TRAP, OBJECT_SELF);
if (rSave==0)
    {
    ActionSpeakString ("Weakened beams give way beneath your feet and you fall through the ceiling!!!", TALKVOLUME_TALK);
    eDam = EffectDamage(d6(2), DAMAGE_TYPE_BLUDGEONING); //The damage roll
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPitvictim);
    AssignCommand(oPitvictim, ActionJumpToLocation(GetLocation(oWay)));
    AssignCommand(oPitvictim,ActionPlayAnimation(ANIMATION_LOOPING_SIT_CROSS, 1.0, 2.0));
    FloatingTextStringOnCreature("ouch...", oPitvictim, FALSE);
    }
else
    {
    ActionSpeakString ("You've managed to avoid collapsing beams!", TALKVOLUME_TALK);
    }
}
