/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

int StartingConditional()
{
object oPC = GetPCSpeaker();

int nStrMod = GetAbilityModifier(ABILITY_STRENGTH, oPC);

int nDC = (24 - nStrMod);

if (!ReflexSave(oPC, nDC)) return FALSE;

return TRUE;
}

