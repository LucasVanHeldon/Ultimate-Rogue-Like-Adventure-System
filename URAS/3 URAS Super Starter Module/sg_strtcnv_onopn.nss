/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnOpen
void main()
{

object oPC = GetLastOpenedBy();

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = OBJECT_SELF;

AssignCommand(oTarget, ActionStartConversation(oPC, ""));

}

