/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnExit
void main()
{

object oPC = GetExitingObject();

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = GetNearestObject(OBJECT_TYPE_DOOR, OBJECT_SELF);

DelayCommand(8.0, AssignCommand(oTarget, ActionCloseDoor(oTarget)));

DelayCommand(8.0, SetLocked(oTarget, TRUE));

}

