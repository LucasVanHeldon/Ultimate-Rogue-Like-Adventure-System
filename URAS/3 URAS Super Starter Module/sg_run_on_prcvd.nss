/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.3

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Goes OnPerceived of a creature
void main()
{

object oPC = GetLastPerceived();

if (!GetIsPC(oPC)) return;

if (!GetLastPerceptionSeen()) return;
ActionSpeakString("Grahhh! Momma! Slaves got out! Slaves Escape!!");

ActionMoveAwayFromObject(oPC);

ActionWait(3.0f);

object oTarget;
oTarget = OBJECT_SELF;

DestroyObject(oTarget, 0.0);

}

