#include "x0_i0_henchman"
void main()
{
object oPC = GetLastOpenedBy();
if (!GetIsPC(oPC)) return;
StoreCampaignHenchman(oPC);
}
