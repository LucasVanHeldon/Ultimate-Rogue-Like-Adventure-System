/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

int StartingConditional()
{
object oPC = GetPCSpeaker();

if (!(GetLocalInt(oPC, "FirstTimeTalk_Merch_3") == 0)) return FALSE;

if (!(GetGold(oPC) >= 10)) return FALSE;

return TRUE;
}
