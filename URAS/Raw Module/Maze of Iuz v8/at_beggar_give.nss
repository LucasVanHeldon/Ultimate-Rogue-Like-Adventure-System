//::///////////////////////////////////////////////
//:: FileName at_beggar_give
//:://////////////////////////////////////////////

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

//AssignCommand(oTarget, ActionGiveItem(GetItemPossessedBy(OBJECT_SELF, "ivoryhorsehead"), oPC));

AssignCommand(oTarget, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0f, 2.0f));

CreateItemOnObject("ivoryhorsehead", oPC);
}
