/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnUsed
void main()
{

object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

int nInt;
nInt=GetLocalInt(oPC, "Lock_Opened");

if (!(nInt == 0))
   return;

object oTarget;
oTarget = OBJECT_SELF;

AssignCommand(oTarget, ActionStartConversation(oPC, ""));

}
