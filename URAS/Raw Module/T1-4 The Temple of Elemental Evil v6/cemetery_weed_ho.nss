/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.2

For download info, please visit:
http://www.angelfire.com/space/lilacsoul    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = oPC;

ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectParalyze(), oTarget, 25.0f);
SendMessageToPC(oPC, "As you walk amongst the overgrown weeds, the weeds seem to come alive and trip you then manages to entangle your arms as well, effectively holding you.");

}

