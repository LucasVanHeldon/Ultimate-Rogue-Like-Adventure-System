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

AddJournalQuestEntry("EntranceSuderham", 500, oPC, TRUE, FALSE);
AddJournalQuestEntry("Beginning", 2, oPC, TRUE, FALSE);

DoSinglePlayerAutoSave();

}

