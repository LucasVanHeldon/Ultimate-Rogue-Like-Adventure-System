#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

if (GetLocalInt(oPC, "xp_double")== 0)
   {
   RewardPartyXP(250, oPC, TRUE); //Party only recieves 1/2 of the total XP because one of the pair died.

   SetLocalInt(oPC, "xp_double", 1);

   }
}

