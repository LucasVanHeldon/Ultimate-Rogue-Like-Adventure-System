/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.3

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{
//if for some reason Mitgan or Black Kerr do not disappear when they should, this will take care of them if they're talked to again.
object oPC = GetPCSpeaker();

ClearAllActions();

ActionMoveToObject(GetObjectByTag("Slave_Exit01"), TRUE);

object oTarget;
oTarget = OBJECT_SELF;

DelayCommand(5.0, DestroyObject(oTarget, 0.0));

}
