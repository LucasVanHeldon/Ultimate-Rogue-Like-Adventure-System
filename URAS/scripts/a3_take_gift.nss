//Put this on action taken in the conversation editor
void main()
{

object oPC = GetPCSpeaker();

int nGift = GetLocalInt(oPC, "PCGift");

AssignCommand(oPC, TakeGoldFromCreature(nGift, oPC, TRUE));


}
