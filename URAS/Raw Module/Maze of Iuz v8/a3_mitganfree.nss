/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.3

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

SetLocalInt(oPC, "MitganFree", 1);

ClearAllActions();

ActionMoveToObject(GetObjectByTag("Slave_Exit05"), TRUE);

ActionWait(2.0f);

ActionMoveToObject(GetObjectByTag("Slave_Exit04"), TRUE);

ActionWait(2.0f);

ActionMoveToObject(GetObjectByTag("Slave_Exit03"), TRUE);

ActionWait(2.0f);

ActionMoveToObject(GetObjectByTag("Slave_Exit02"), TRUE);

ActionWait(2.0f);

ActionMoveToObject(GetObjectByTag("Slave_Exit01"), TRUE);

object oTarget;
oTarget = OBJECT_SELF;

DelayCommand(25.0, DestroyObject(oTarget, 0.0));

}

