/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

if (GetLocalInt(oPC, "NW_JOURNAL_ENTRYhaunted")>= 5000)
   {
   AddJournalQuestEntry("haunted", 5010, oPC, TRUE, FALSE);

   }
else
   {
   AddJournalQuestEntry("haunted", 5015, oPC, TRUE, FALSE);

   }

}

