/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.3

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnEnter
void main()
{

object oPC = GetEnteringObject(); //If PC has entered this area

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = GetObjectByTag("06_TQDoor"); //Close and Lock this door to prevent PC from entering back into Moneychangers House!

AssignCommand(oTarget, ActionCloseDoor(oTarget));

SetLocked(oTarget, TRUE);

SetLockKeyRequired(oTarget, TRUE);

}

