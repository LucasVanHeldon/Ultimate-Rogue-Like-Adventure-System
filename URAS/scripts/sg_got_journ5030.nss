/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

AddJournalQuestEntry("haunted", 5030, oPC, TRUE, FALSE);

}

