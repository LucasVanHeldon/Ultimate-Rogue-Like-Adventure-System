/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnDeath
void main()
{

object oPC = GetLastKiller();

//if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = GetObjectByTag("EntranceEvil");

SoundObjectStop(oTarget);

//ExecuteScript("nw_c2_default7", OBJECT_SELF);
}
