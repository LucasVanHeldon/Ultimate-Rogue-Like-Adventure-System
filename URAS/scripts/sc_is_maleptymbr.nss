/* Script Created By Rami_Ahmed */

//::///////////////////////////////////////////////
//:: Name SC_IS_MALEPTYMBR
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Starting conditional that checks to see if the
    Speaker is Female & (while not including
    the Speaker) checks for Male partymembers.
*/
//:://////////////////////////////////////////////
//:: Created By: Rami_Ahmed
//:: Created On: 02/13/2006
//:://////////////////////////////////////////////

int StartingConditional()
{
object oPC = GetPCSpeaker();
// Get the speaking player
object oPartyMember = GetFirstFactionMember(oPC);
// Get the first faction member of the player (partymember)
while (oPartyMember != OBJECT_INVALID)
// Loop through all the players party members
 {
       if (GetGender(oPC) == GENDER_FEMALE &&
           // if the player speaking is female and
           oPC != oPartyMember &&
           // Do not count the speaking player in the party members.... and
           GetGender(oPartyMember) == GENDER_MALE)
           // Any of her party members are male
            {
               return TRUE;
               // return TRUE = Show This Text.
            }
 oPartyMember = GetNextFactionMember(oPC);
 // Get the next party member of the player
 }
return FALSE;
// if no party members are present etc etc, dont show this text
}

