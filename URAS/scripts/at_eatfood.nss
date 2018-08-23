//::///////////////////////////////////////////////
//:: FileName at_eatfood
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: 7/3/2005 11:49:53 PM
//:://////////////////////////////////////////////
void main()
{
    object oPC = GetPCSpeaker();

    // Remove items from the player's inventory
    object oItemToTake;
    oItemToTake = GetItemPossessedBy(oPC, "sourstew");
    if(GetIsObjectValid(oItemToTake) != 0)
        DestroyObject(oItemToTake);
    oItemToTake = GetItemPossessedBy(oPC, "moldybread");
    if(GetIsObjectValid(oItemToTake) != 0)
        DestroyObject(oItemToTake);
}
