//::///////////////////////////////////////////////
//:: Name A3_PCGold & A3_has_Map_TQ
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Stores the amount of gold PC is carrying when entering Area. So that PC
    can't cheat with the Moneychanger, by dropping gold on the ground.

    Also, if PC has a map bought from the Sage, in the Official Quarter, the
    area should be revealed. (this was part of a different script, but had to
    combine these two scripts together.)
*/
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: April 14th, 2006
//:://////////////////////////////////////////////

//Put this script OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

//int nGold = GetFactionGold(oPC); //if PC is in a Party, get party gold.(Doesn't seem to work in SP)

int nGold = GetGold(oPC);

SetLocalInt(GetModule(), "PCGold", nGold);

//if PC has "Map of the Official Quarter"
if (GetItemPossessedBy(oPC, "map_tq")== OBJECT_INVALID)
   return;
//Reveal this area map to PC.
ExploreAreaForPlayer(GetArea(oPC), oPC);

}
