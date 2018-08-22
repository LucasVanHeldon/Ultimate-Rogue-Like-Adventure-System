int StartingConditional()
{
object oPC = GetPCSpeaker();

int nTax = GetLocalInt(oPC, "PCTax");

int nGold = GetGold(oPC);

if (nGold < nTax) return FALSE;

return TRUE;
}
