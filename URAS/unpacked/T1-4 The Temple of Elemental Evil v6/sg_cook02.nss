/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.0

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

ClearAllActions();

ActionSpeakString("AHH!!! THE MERCENARIES ARE RIOTING AGAIN!!!");

ActionMoveAwayFromObject(oPC, TRUE);

object oTarget;
oTarget = GetObjectByTag("GoblinCookAssistant");

AssignCommand(oTarget, ClearAllActions());

AssignCommand(oTarget, ActionSpeakString("MAY MAGLUBIYET FRY THEIR LIVERS!!!"));

AssignCommand(oTarget, ActionMoveAwayFromObject(oPC, TRUE));

oTarget = GetObjectByTag("GoblinCookAssistant1");

AssignCommand(oTarget, ClearAllActions());

AssignCommand(oTarget, ActionSpeakString("MAY MAGLUBIYET FRY THEIR LIVERS!!!"));

AssignCommand(oTarget, ActionMoveAwayFromObject(oPC, TRUE));

oTarget = OBJECT_SELF;

DelayCommand(6.0, DestroyObject(oTarget, 0.0));

oTarget = GetObjectByTag("GoblinCookAssistant");

DelayCommand(6.0, DestroyObject(oTarget, 0.0));

oTarget = GetObjectByTag("GoblinCookAssistant1");

DelayCommand(6.0, DestroyObject(oTarget, 0.0));

}
