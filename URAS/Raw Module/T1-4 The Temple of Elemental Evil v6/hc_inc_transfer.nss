//  ----------------------------------------------------------------------------
//  hc_inc_transfer
//  ----------------------------------------------------------------------------
/*
    Library containg functions related to moving objects between objects.
*/
//  ----------------------------------------------------------------------------
/*
    HCR 3.02 - 04 August 2004 - Sunjammer
    - added HC_Transfer_MoveEquipment
    - added HC_Transfer_MoveGold

    HCR 3.02 - 26 July 2004 - Sunjammer
    - rewritten
*/
//  ----------------------------------------------------------------------------
#include "hc_inc_nodrop"

//  ----------------------------------------------------------------------------
//  CONSTANTS
//  ----------------------------------------------------------------------------

// number of inventory slots excluding creature slots
const int HC_NUM_PC_INVENTORY_SLOTS = 14;

// tag of the Death System's Player Corpse Token (PCT) object
const string HC_TAG_PLAYER_CORPSE_TOKEN = "PlayerCorpse";

// blueprint and name of variable for bag of gold
const string HC_REF_LOOT_BAG_OF_GOLD    = "bagofgold";
const string HC_VAR_LOOT_BAG_OF_GOLD    = "AmtGold";

// name of local variable indicating if an object has been checked as a result
// of being contained within an item that was being checked
const string HC_VAR_TRANSFER_CHECKED    = "HC_Transfer_Checked";


//  ----------------------------------------------------------------------------
//  PROTOTYPES
//  ----------------------------------------------------------------------------

// Marks all items in oContainer as checked (HC_VAR_TRANSFER_CHECKED) to avoid
// duplication. Any item marked as checked will not be copied on one subsequent
// occassion.
//  - oContainer:   any object with an inventory
void HC_Transfer_MarkContentsAsChecked(object oContainer);

// Transfers all gold from oSource to oTarget's inventory creating a "bag of
// gold" in the process which if clicked on will reverse the process.
//  - oSource:      any creature
//  - oTarget:      any object with an inventory
void HC_Transfer_MoveGold(object oSource, object oTarget);

// Transfers every item from oSource's equipment slots to oTarget's inventory
// with the exception of "no-drop" and "creature" items.  Any local variables
// stored on an item will remain.  Nothing will happen if either oSource or
// oTarget is invalid or if oTarget does not have an inventory.
//  - oSource:      any creature
//  - oTarget:      any object with an inventory
void HC_Transfer_MoveEquipment(object oSource, object oTarget);

// Transfers every item from oSource's inventory to oTarget's inventory with the
// exceptions of "no-drop" items and Player Corpse Tokens. Any local variables
// stored on an item will remain. Nothing will happen if either oSource or
// oTarget is invalid or does not have an inventory.
//  - oSource:      any object with an inventory
//  - oTarget:      any object with an inventory
void HC_Transfer_MoveInventory(object oSource, object oTarget);


//  ----------------------------------------------------------------------------
//  DEPRECATED
//  ----------------------------------------------------------------------------

void hcTakeObjects(object oSource, object oTarget, int nNull=0)
{
    HC_Transfer_MoveInventory(oSource, oTarget);
}


//  ----------------------------------------------------------------------------
//  FUNCTIONS
//  ----------------------------------------------------------------------------

void HC_Transfer_MarkContentsAsChecked(object oContainer)
{
    // mark each item in turn as "checked"
    object oItem = GetFirstItemInInventory(oContainer);
    while(GetIsObjectValid(oItem))
    {
        SetLocalInt(oItem, HC_VAR_TRANSFER_CHECKED, TRUE);
        oItem = GetNextItemInInventory(oContainer);
    }
}


void HC_Transfer_MoveGold(object oSource, object oTarget)
{
    int nGold = GetGold(oSource);
    if(nGold > 0)
    {
        // create a bag to represent the gold as it not an item in itself
        object oBag = CreateItemOnObject(HC_REF_LOOT_BAG_OF_GOLD, oTarget);
        if(GetIsObjectValid(oBag))
        {
            // register the amount of gold the bag "contains"
            SetLocalInt(oBag, HC_VAR_LOOT_BAG_OF_GOLD, nGold);
            AssignCommand(oBag, TakeGoldFromCreature(nGold, oSource, TRUE));
        }
    }

}


void HC_Transfer_MoveEquipment(object oSource, object oTarget)
{
    int nSlot;

    // copy each item in turn
    for(nSlot = 0; nSlot < HC_NUM_PC_INVENTORY_SLOTS; nSlot++)
    {
        object oItem = GetItemInSlot(nSlot, oSource);
        if(GetIsObjectValid(oItem))
        {
            if(HC_GetIsItemNoDrop(oItem) == FALSE)
            {
                // copy and destroy item
                CopyItem(oItem, oTarget, TRUE);
                DestroyObject(oItem);
            }
        }
    }
}


void HC_Transfer_MoveInventory(object oSource, object oTarget)
{
    // copy each item in turn
    object oItem = GetFirstItemInInventory(oSource);
    while(GetIsObjectValid(oItem))
    {
        int bSkipThisItem = FALSE;

        // ---------------------------------------------------------------------
        // Part 1: Deal with items that don't get transferred, namely:
        //  - items already transferred in containers
        //  - player corpse tokens
        //  - no-drop items
        //
        // NOTE: The order of this if/else block is designed to minimise the
        // number of instructions by dealing with the most common and least
        // demanding first.
        // ---------------------------------------------------------------------

        if(GetLocalInt(oItem, HC_VAR_TRANSFER_CHECKED))
        {
            // item has been already been handled via its container and should
            // be left where it is,
            bSkipThisItem = TRUE;

            // delete the "checked" flag to prevent errors in future checks
            DeleteLocalInt(oItem, HC_VAR_TRANSFER_CHECKED);
        }
        else if(GetTag(oItem) == HC_TAG_PLAYER_CORPSE_TOKEN)
        {
            // item is a player corpse token and should be left where it is
            // NOTE: if used the DeathSystem will ensure it is dropped on death
            bSkipThisItem = TRUE;
        }
        else if(HC_GetIsItemNoDrop(oItem))
        {
            // item is or contains a no-drop item and should be left where it is
             bSkipThisItem = TRUE;

            if(GetHasInventory(oItem))
            {
                // item is a no-drop container and its contents should be also
                // left where they are: mark the contents as "checked"
                HC_Transfer_MarkContentsAsChecked(oItem);
            }
        }

        if(bSkipThisItem)
        {
            // the item has been moved already so skip it to avoid duplication
            oItem = GetNextItemInInventory(oSource);
            continue;
        }

        // ---------------------------------------------------------------------
        // Part 2: Deal with the items that do get transferred
        // ---------------------------------------------------------------------

        if(GetHasInventory(oItem))
        {
            // NOTE: the item is a container so CopyItem will not work. Use
            // CopyObject to copy it, its contents and all variables. Mark the
            // contents as "checked" to prevent them from being duplicated

            // NOTE: a container that is or contains a no-drop item will be
            // flagged as no-drop and it will have been dealt with in Part 1

            // copy (mark contents) and destroy item
            CopyObject(oItem, GetLocation(oTarget), oTarget);
            HC_Transfer_MarkContentsAsChecked(oItem);
            DestroyObject(oItem);
        }
        else
        {
            // copy and destroy item
            CopyItem(oItem, oTarget, TRUE);
            DestroyObject(oItem);
        }

        oItem = GetNextItemInInventory(oSource);
    }
}
//void main(){}

