void main()
{
 object oPC = GetPCSpeaker(); // object to take from, in this instance. from the speaking PC.

        {
         string sTag = "PlayersStuff1"; // object to place all taken items in, defined by objects tag.
         object oTo;
         object oItem1 = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
         object oItem2 = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
         object oItem3 = GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC);
         object oItem4 = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R, oPC);
         oTo = GetNearestObjectByTag(sTag);
         AssignCommand(oTo,ActionTakeItem(oItem1, oPC));
         AssignCommand(oTo,ActionTakeItem(oItem2, oPC));
         AssignCommand(oTo,ActionTakeItem(oItem3, oPC));
         AssignCommand(oTo,ActionTakeItem(oItem4, oPC));
        }

    GetNextPC();
    oPC = GetNextPC();
}
