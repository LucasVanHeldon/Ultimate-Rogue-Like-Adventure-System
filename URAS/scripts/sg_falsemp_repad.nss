/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnDeath
void main()
{

object oPC = GetLastKiller();

while (GetIsObjectValid(GetMaster(oPC)))
   {
   oPC=GetMaster(oPC);
   }

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = GetObjectByTag("False Slaves");

AdjustReputation(oPC, oTarget, -100);

oTarget = GetObjectByTag("FalseMerchantPlot");

AdjustReputation(oPC, oTarget, -100);

oTarget = GetObjectByTag("Highport Guards");

AdjustReputation(oPC, oTarget, 50);

}

