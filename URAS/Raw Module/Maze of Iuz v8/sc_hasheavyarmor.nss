// sr5.3
// Added code to check to see if resting in armor is set on if not do not display
// this option.
int StartingConditional()
{
    int iResult = FALSE;
    object oPC = GetPCSpeaker();
    object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST);
    if (GetItemACValue(oArmor) > 5)
        iResult = TRUE;
    return iResult;
}
