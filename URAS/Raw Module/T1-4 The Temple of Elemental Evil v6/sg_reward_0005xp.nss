#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.3

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnDeath
void main()
{

object oPC = GetLastKiller();

if (!GetIsPC(oPC)) return;

RewardPartyXP(5, oPC, FALSE);

}
