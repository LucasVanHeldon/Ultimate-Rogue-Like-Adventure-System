int StartingConditional()
{
object oPC = GetPCSpeaker();
// Get the speaking player
SetLocalInt(oPC, "PerPerson", 0);
object oPartyMember = GetFirstFactionMember(oPC, FALSE);
// Get the first faction member of the player (partymember)
while (oPartyMember != OBJECT_INVALID)
// Loop through all the players party members
 {
    //int nInt;
    //nInt += 1;
    SetLocalInt(oPC, "PerPerson", GetLocalInt(oPC, "PerPerson")+1);
    int nPeople;
    nPeople = (GetLocalInt(oPC, "PerPerson")*500);
    int nHasGold;
    nHasGold = (GetFactionGold(oPC));
    if (nHasGold >= nPeople)
            {
               return TRUE;
               // return TRUE = Show This Text.
            }
 oPartyMember = GetNextFactionMember(oPC, FALSE);
 // Get the next party member of the player
 }
return FALSE;
// if no party members are present etc etc, dont show this text
}
