/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.3

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnOpen
void main()
{

object oPC = GetLastOpenedBy();

if (!GetIsPC(oPC)) return;

int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

if (DoOnce==TRUE) return;

SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE);

SetLocalInt(oPC, "stable_unlock", 1);

}

