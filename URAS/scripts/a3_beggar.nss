/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

if (DoOnce==TRUE) return;

SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE);

object oTarget;
oTarget = GetObjectByTag("BeggarDeeb");

AssignCommand(oTarget, ClearAllActions());

AssignCommand(oTarget, ActionMoveToObject(oPC, TRUE));

AssignCommand(oTarget, ActionWait(1.0f));

AssignCommand(oTarget, ActionSpeakString("Alms for a crippled veteran..."));

DelayCommand(3.0, AssignCommand(oTarget, ActionStartConversation(oPC, "")));

}

