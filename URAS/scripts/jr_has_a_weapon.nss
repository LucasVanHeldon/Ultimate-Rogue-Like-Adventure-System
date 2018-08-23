//::///////////////////////////////////////////////
//:: Name nw_d2_gwpn01
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Does a check to see if the PC talking to
    the character has a weapon in hand.
*/
//:://////////////////////////////////////////////
//:: Created By: David Gaider
//:: Created On: November 7, 2001
//:: Edited By: JayAre
//:: Edited On: July 22, 2006
//:://////////////////////////////////////////////


int StartingConditional()
{
object oPC = GetPCSpeaker();

object oItem=GetItemInSlot(INVENTORY_SLOT_RIGHTHAND,oPC);
if(GetIsObjectValid(oItem))
    {
        return TRUE;
    }
return FALSE;
}

