int GetNumItems(object oTarget,string sItem)
{
int nNumItems = 0;
object oItem = GetFirstItemInInventory(oTarget);
while (GetIsObjectValid(oItem) == TRUE)
{
if (GetTag(oItem) == sItem)
{
nNumItems = nNumItems + GetNumStackedItems(oItem);
}
oItem = GetNextItemInInventory(oTarget);
}
return nNumItems;
}

/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

int StartingConditional()
{
object oPC = GetPCSpeaker();

if (!(GetNumItems(oPC, "AirElementalGem") == 1)) return FALSE;

if (!(GetNumItems(oPC, "EarthElementalGem") == 1)) return FALSE;

if (!(GetNumItems(oPC, "FireElementalGem") == 1)) return FALSE;

if (!(GetNumItems(oPC, "WaterElementalGem") == 1)) return FALSE;

return TRUE;
}

