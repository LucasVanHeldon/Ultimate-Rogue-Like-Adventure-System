
#include "x0_i0_anims"
#include "x0_i0_treasure"

#include "x2_inc_switches"

#include "lutes"
#include "x3_inc_skin"
#include "inc_abtemplate"

void main()
{
    ExecuteScript("nw_c2_default9",OBJECT_SELF);
    if(GetLocalInt(GetModule(),"bUseAIScripts") == FALSE) return;

    object oSkin = GetItemInSlot(INVENTORY_SLOT_CARMOUR,OBJECT_SELF);
    iChestLevel = GetHitDice(OBJECT_SELF);
    if(!GetIsObjectValid(oSkin))
    {
        oSkin = CreateItemOnObject("mmp_baseskin");
        AssignCommand(OBJECT_SELF,SKIN_SupportEquipSkin(oSkin));
    }
    struct sItemInfo ItemInfo;
    oObject = OBJECT_SELF;

    if(GetLocalInt(OBJECT_SELF,"bAberTable") == TRUE)
    {
        int i;
        for(i = 0; i < GetHitDice(OBJECT_SELF); i++)
            MMP_AbberationTable(oSkin);

        object oBite = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
        MMP_AbberationCW(oBite);
        object oClaw = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
        MMP_AbberationCW(oBite);
    }
}
