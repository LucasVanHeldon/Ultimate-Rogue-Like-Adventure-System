//::///////////////////////////////////////////////
//:: x2_act_ws_makeit
//:: Copyright (c) 2003 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Modifies the current item with the currently
    selected item property.
*/
//:://////////////////////////////////////////////
//:: Created By: Brent
//:: Created On: September 2003
//:: Edited By:  JayAre
//:: Edited On:  April 24, 2003
//:://////////////////////////////////////////////
#include "x2_inc_ws_smith"

void CopyUpgradeItem(object oItem, object oPC);
void MakeNewWeapon(object oPC);

void main()
{
    object oPC = GetPCSpeaker();

    object oItem = GetRightHandWeapon(oPC);
    // * Oct 15: If the player has unequipped his item for some bizarre reason just
    // * abort the entire thing
    if (GetIsObjectValid(oItem) == FALSE)
    {
        return;
    }

    ActionPauseConversation();

    MakeNewWeapon(oPC);
    return;

}

void CopyUpgradeItem(object oItem, object oPC)
{
   object oNewItem = CopyItem(oItem, oPC, TRUE);
   //---------------------------------------------------------------------------
   // GZ: Bugfix for #35259 - Item properties staying around
   //---------------------------------------------------------------------------
   IPRemoveAllItemProperties(oNewItem,DURATION_TYPE_TEMPORARY);
   DelayCommand(1.0, AssignCommand(oPC, ActionEquipItem(oNewItem, INVENTORY_SLOT_RIGHTHAND)));

}

void MakeNewWeapon(object oPC)
{
    wsEnhanceItem(oPC, oPC);
    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY2));
    PlaySound("sim_bonholy");
    location lPC = GetLocation(oPC);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BREACH), lPC);
}
