//  ----------------------------------------------------------------------------
//  hc_inc_nodrop
//  ----------------------------------------------------------------------------
/*
    Library of functions to prevent a PC from attempting to drop, barter, sell
    or otherwise displace items designated as no-drop.  The tag-based aspects
    have been largely superseded by ItemCursedFlag which should be more secure
    and more efficient.
*/
//  ----------------------------------------------------------------------------
/*
    HCR 3.02 - 04 August 2004 - Sunjammer
    - rewritten and renamed

    Credits:
    - Scott Thorne
    - Panduh
    - Diabolique

*/
//  ----------------------------------------------------------------------------
#include "crr_subrace_hc_i"


//  ----------------------------------------------------------------------------
//  PROTOTYPES
//  ----------------------------------------------------------------------------

// Returns TRUE if sString contains sSubString.  Comparison is case-insensitive.
int HC_GetIsInString(string sString, string sSubString);

// Returns TRUE if oItem is (or contains an item) considered as no-drop.  An
// item is considered no-drop if the ItemCursedFlag is TRUE, if it has a no-drop
// tag or if it is a CRR Subrace no-drop item.
int HC_GetIsItemNoDrop(object oItem);


//  ----------------------------------------------------------------------------
//  DEPRECATED
//  ----------------------------------------------------------------------------

int GetIsNoDrop(object oItem)
{
    return HC_GetIsItemNoDrop(oItem);
}


//  ----------------------------------------------------------------------------
//  FUNCTIONS
//  ----------------------------------------------------------------------------

int HC_GetIsInString(string sString, string sSubString)
{
    sString = GetStringUpperCase(sString);
    sSubString = GetStringUpperCase(sSubString);

    return FindSubString(sString, sSubString) > -1;
}


int HC_GetHasNoDropTag(object oItem)
{
    string sItemTag = GetTag(oItem);

    // check tag for legacy no-drop identifiers
    if(sItemTag == "ControlShapeTool"
    || sItemTag == "hc_paladinsymb"
    || sItemTag == "hc_palbadgecour"
    || sItemTag == "TrackerTool"
    || sItemTag == "searchtool"
    || sItemTag == "fuguerobe"
    || sItemTag == "EmoteWand"
    || HC_GetIsInString(sItemTag, "_NDP")
    || HC_GetIsInString(sItemTag, "SEI_SLA")
    || HC_GetIsInString(sItemTag, "_NOD")
    || HC_GetIsInString(sItemTag, "NODROP")
    || HC_GetIsInString(sItemTag, "hlslang")
    || HC_GetIsInString(sItemTag, "dmfi_"))
    {
        // matched
        return TRUE;
    }

    // no match
    return FALSE;
}


int HC_GetIsItemNoDrop(object oItem)
{
    // is the item itself no-drop?
    if(GetItemCursedFlag(oItem)
    || HC_GetHasNoDropTag(oItem)
    || crr_SubraceHCRnodrop(oItem))
    {
        return TRUE;
    }

    // if it is a container is no-drop it may still inherit no-drop status if
    // any of the items in its ineventory are no-drop
    if(GetHasInventory(oItem))
    {
        // check each item in turn
        object oContained = GetFirstItemInInventory(oItem);
        while(GetIsObjectValid(oContained))
        {
            if(HC_GetIsItemNoDrop(oContained))
            {
                // item is no-drop, flag the container, no need to continue
                return TRUE;
            }
            oContained = GetNextItemInInventory(oItem);
        }
    }

    // item is not no-drop
    return FALSE;
}

//void main(){}

