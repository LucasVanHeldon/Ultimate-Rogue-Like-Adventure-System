/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.2

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this script OnUsed
void main()
{

object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

if (DoOnce==TRUE) return;

SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE);

CreateItemOnObject("strongrope", oPC);

object oTarget;
oTarget = OBJECT_SELF;

DelayCommand(2.0, DestroyObject(oTarget, 0.0));

}

