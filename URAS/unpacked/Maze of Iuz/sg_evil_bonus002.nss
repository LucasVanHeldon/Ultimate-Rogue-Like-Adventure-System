#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
   {
   RewardPartyXP(10, oPC, FALSE);

   CreateItemOnObject("templegatekey", oPC);

   AdjustAlignment(oPC, ALIGNMENT_EVIL, 1);

   SetLocalInt(GetPCSpeaker(), "FalseMerchantPlot", 1);

   }
else
   {
   CreateItemOnObject("templegatekey", oPC);

   AdjustAlignment(oPC, ALIGNMENT_EVIL, 1);

   SetLocalInt(GetPCSpeaker(), "FalseMerchantPlot", 1);

   }

}
