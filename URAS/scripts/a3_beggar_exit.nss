/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

object oTarget;
oTarget = GetObjectByTag("BeggarDeeb");

AssignCommand(oTarget, ClearAllActions());

AssignCommand(oTarget, ActionMoveToObject(GetObjectByTag("BeggarExit")));

oTarget = GetObjectByTag("SuderhamSergeant");

AssignCommand(oTarget, ClearAllActions());

AssignCommand(oTarget, ActionWait(2.0f));

AssignCommand(oTarget, ActionMoveToObject(GetObjectByTag("BeggarExit")));

oTarget = GetObjectByTag("BeggarDeeb");

DelayCommand(11.0, DestroyObject(oTarget, 0.0));

oTarget = GetObjectByTag("SuderhamSergeant");

DelayCommand(10.0, DestroyObject(oTarget, 0.0));

}

