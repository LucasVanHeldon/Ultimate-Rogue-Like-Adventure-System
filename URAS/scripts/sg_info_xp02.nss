#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

if (GetLocalInt(oPC, "slavelord_info1")== 0) //used for Slave Lords Journal #2350 (Gorbin Dialogue)
   {
   SendMessageToPC(oPC, "You have gained information.");

   RewardPartyXP(50, oPC, TRUE);

   SetLocalInt(oPC, "slavelord_info1", 1);

   }
}
