#include "nw_i0_tool"
/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.2

For download info, please visit:
http://www.angelfire.com/space/lilacsoul    */

//Put this OnOpen
void main()
{

object oPC = GetLastOpenedBy();

if (!GetIsPC(oPC)) return;

int nInt;
nInt=GetLocalInt(oPC, "scroll_invis");

if (!(nInt == 0))
   return;

if (!(GetAbilityScore(oPC, ABILITY_WISDOM))>= 14)
   return;

RewardPartyGP(0, oPC, FALSE);

object oTarget;
oTarget = GetObjectByTag("StoneChest");

CreateItemOnObject("nw_it_sparscr207", oTarget);

SetLocalInt(oPC, "scroll_invis", 1);

}

