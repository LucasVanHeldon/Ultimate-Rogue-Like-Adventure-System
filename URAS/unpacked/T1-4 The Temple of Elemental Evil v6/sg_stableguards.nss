/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

ClearAllActions();

ActionSpeakString("Alarm! Alarm! Intruders! Alarm!");

ActionMoveToObject(GetObjectByTag("FireGong"), TRUE);

ActionAttack(oPC);

object oTarget;
oTarget = GetObjectByTag("Gong");

SoundObjectPlay(oTarget);

SoundObjectSetVolume(oTarget, 100);

oTarget = OBJECT_SELF;

AdjustReputation(oPC, oTarget, -100);

SetLocalInt(oPC, "AlertGuards", 1);

}

