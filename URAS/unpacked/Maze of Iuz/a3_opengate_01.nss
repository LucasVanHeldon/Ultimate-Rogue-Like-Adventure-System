/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

#include "nw_i0_tool"

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

//Take Letter from PC
object oItem;
oItem = GetItemPossessedBy(oPC, "LetterfromtheCouncil");

if (GetIsObjectValid(oItem))
   DestroyObject(oItem);

//Open Gate & Update Journal
object oTarget;
oTarget = GetObjectByTag("SuderhamGate");

SetLocked(oTarget, FALSE);

//AssignCommand(oTarget, ActionOpenDoor(oTarget));

if (GetLocalInt(oPC, "NW_JOURNAL_ENTRYEntranceSuderham")< 510)
   {
   RewardPartyXP(300, oPC, TRUE);

   }
}
