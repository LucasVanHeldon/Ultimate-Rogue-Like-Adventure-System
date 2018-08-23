//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

int nTax = GetLocalInt(oPC, "PCTax");

AssignCommand(oPC, TakeGoldFromCreature(nTax, oPC, TRUE));

SetLocalInt(GetModule(), "Money", 1);

}
