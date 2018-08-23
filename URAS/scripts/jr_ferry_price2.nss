void main()
{
/*
 //old script
 object oPC = GetPCSpeaker();
 int nAmount;
 nAmount = (GetLocalInt(oPC, "PerPerson")*500);
 AssignCommand(oPC, TakeGoldFromCreature(nAmount, oPC, TRUE));
*/

object oPC = GetPCSpeaker();
SetLocalInt(oPC, "PerPerson", 0);
object oPartyMember = GetFirstFactionMember(oPC, FALSE);
// Get the first faction member of the player (partymember)
while (oPartyMember != OBJECT_INVALID)
// Loop through all the players party members
 {
    //int nInt;
    //nInt += 1;
    SetLocalInt(oPC, "PerPerson", GetLocalInt(oPC, "PerPerson")+1);
    oPartyMember = GetNextFactionMember(oPC, FALSE);
    // Get the next party member of the player
 }
 int nAmount;
 nAmount = (GetLocalInt(oPC, "PerPerson")*500);
 AssignCommand(oPC, TakeGoldFromCreature(nAmount, oPC, TRUE));

}
