/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.3

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

object oTarget;
object oSpawn;
object oSpawn1;
location lTarget;
oTarget = oPC;

lTarget = GetLocation(oTarget);

oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "moneyguard2", lTarget);

lTarget = GetLocation(oTarget);

oSpawn1 = CreateObject(OBJECT_TYPE_CREATURE, "moneyguard", lTarget);

oTarget = oSpawn1;

AssignCommand(oTarget, ActionStartConversation(oPC, ""));

}

