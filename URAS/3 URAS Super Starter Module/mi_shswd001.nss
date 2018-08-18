////////////////////////////////////////////////////////////////////////////////
// Arbane's Sword                                                             //
// On use, haste for 12 seconds, once per day.                                //
//                                                                            //
// Copyright (c) 2003 Bioware Corp.                                           //
////////////////////////////////////////////////////////////////////////////////
/*
    This is an example of how to use the
    new default module events for NWN to
    have all code concerning one item in
    a single file.

    Note that this system only works if
    the following scripts are set in your
    module events

    OnEquip      - x2_mod_def_equ   (or mi_zep_onequip)
    OnUnEquip    - x2_mod_def_unequ
    OnAcquire    - x2_mod_def_aqu
    OnUnAcqucire - x2_mod_def_unaqu
    OnActivate   - x2_mod_def_act
*/
////////////////////////////////////////////////////////////////////////////////
// Created By: Georg Zoeller                                                  //
// Created On: 2003-09-10                                                     //
// Modified By: Grimlar  and Arikel Tolifen                                   //
// Modified On: July 2005                                                     //
////////////////////////////////////////////////////////////////////////////////
#include "x2_inc_switches"

void main()
{
    int nEvent = GetUserDefinedItemEventNumber();    //Which event triggered this
    object oPC;                                                           //The player character using the item
    object oItem;                                                        //The item being used
    object oSpellOrigin;                                               //The origin of the spell
    object oSpellTarget;                                              //The target of the spell
    int iSpell;                                                             //The Spell ID number

    //Set the return value for the item event script
    // * X2_EXECUTE_SCRIPT_CONTINUE - continue calling script after executed script is done
    // * X2_EXECUTE_SCRIPT_END - end calling script after executed script is done
    int nResult = X2_EXECUTE_SCRIPT_END;

    switch (nEvent)
    {
         case X2_ITEM_EVENT_EQUIP:
            // * This code runs when the item is equipped
            // * Note that this event fires for PCs only

            oPC = GetPCItemLastEquippedBy();        // The player who equipped the item
            oItem = GetPCItemLastEquipped();         // The item that was equipped

            //Your code goes here
            if (GetAbilityScore(oPC, ABILITY_STRENGTH)>= 8) //Determines Minimum Str to wield or carry
            {
            }
            else
            {
            AssignCommand(oPC, ActionUnequipItem(GetObjectByTag("mi_shswd001"))); //If unable to carry, unequips item

            AssignCommand(oPC, ActionSpeakString("I'm not strong enough to wield this!"));

            }
            break;

        case X2_ITEM_EVENT_ACTIVATE:
            // * This code runs when the Unique Power property of the item is used or the item
            // * is activated. Note that this event fires for PCs only

            oPC   = GetItemActivator();                 // The player who activated the item
            oItem = GetItemActivated();               // The item that was activated

            //Your code goes here
            //Applies the effect, Haste, for 12 seconds

            effect eEffect = EffectHaste();
            effect eVis = EffectVisualEffect(VFX_IMP_HASTE);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eVis,oPC, 12.0f);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oPC, 12.0f);

            break;
    }

    //Pass the return value back to the calling script
    SetExecutedScriptReturnValue(nResult);
}

