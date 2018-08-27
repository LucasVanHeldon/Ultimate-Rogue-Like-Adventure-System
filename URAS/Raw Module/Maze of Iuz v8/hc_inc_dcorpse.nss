// HCR v3.2.0 - Fix to make HotU's selectable corpses "static". - Sunjammer.
//::////////////////////////////////////////////////////////////////////////////
//:: FileName:  HC_Inc_DCorpse
//::////////////////////////////////////////////////////////////////////////////
/*
   Various functions to create, move and destroy the visible player corpse.
*/
//::////////////////////////////////////////////////////////////////////////////
#include "HC_Id"
#include "HC_Inc_PWDB_Func"
//::////////////////////////////////////////////////////////////////////////////


//  ----------------------------------------------------------------------------
//  CONSTANTS
//  ----------------------------------------------------------------------------

//  Controls the inventory slots that will be cleared.
//  - set to 14 to clear PC slots and leave Creature (hides) slots.
//  - set to 18 to clear PC and Creature (hides) slots.
int NUM_PC_INVENTORY_SLOTS = 14;


//  ----------------------------------------------------------------------------
//  VARIABLES
//  ----------------------------------------------------------------------------

int nStrip = GetLocalInt(GetModule(), "INVSTRIP");
int nLoot = GetLocalInt(GetModule(), "LOOTSYSTEM");


//  ----------------------------------------------------------------------------
//  PROTOTYPES
//  ----------------------------------------------------------------------------

//  Creates a visible corpse of oPC and destroys equiped and iventory items as
//  required. Called when oPC dies.
void CreateCorpse(object oPC);

//  Destroys the exsisting visible corpse belonging to oPC and destorys equipped
//  and inventory items as required. Called when player is revived.
void DestroyCorpse(object oPC);

//  Creates a copy of oDC in fugue and destroys the original visible corpse.
//  Called when a visible corpse is picked up.
void CopyToFugue(object oDC);

//  Creates a visible corpse for the player corpse token oDropped and destroys
//  the copy corpse in fugue.  The new corpse is located either where the token
//  was put down or where the player originally died. Called when corpse is put
//  down or when the player carrying it logs out.
//  - oOwner:   (legacy - not used but must be included)
//  - oDropper: player who was carrying the corpse token
//  - oDropped: the corpse token
object CopyFromFugue(object oOwner, object oDropper, object oDropped);


//  ----------------------------------------------------------------------------
//  FUNCTIONS
//  ----------------------------------------------------------------------------

//::////////////////////////////////////////////////////////////////////////////
void CreateCorpse(object oPC)
{
    string sID = GetsID(oPC);
    object oMod = GetModule();

    // use current location as default unless logging in dead
    location lLoc = GetLocation(oPC);
    if(GetLocalInt(oPC, "LOGINDEATH"))
    {
        lLoc = GetPersistentLocation(oMod, "DIED_HERE" + sID);
        DeleteLocalInt(oPC, "LOGINDEATH");
    }

    // create HotU friendly player corpse
    object oDC2 = CopyObject(oPC, lLoc, OBJECT_INVALID);
    AssignCommand(oDC2, SetIsDestroyable(FALSE, FALSE, FALSE));
    ChangeToStandardFaction(oDC2, STANDARD_FACTION_COMMONER);

    // associate with invisible corpse and store this corpse
    object oDeathCorpse =  GetLocalObject(oMod, "DeathCorpse" + sID);
    SetLocalString(oDeathCorpse, "DC2Key", sID);
    SetLocalObject(oMod, "DC2" + sID, oDC2);

    // remove gold
    int nGold = GetGold(oDC2);
    AssignCommand(oDC2, TakeGoldFromCreature(nGold, oDC2, TRUE));

    // remove inventory items
    object oItem = GetFirstItemInInventory(oDC2);
    while (GetIsObjectValid(oItem))
    {
        DestroyObject(oItem);
        oItem = GetNextItemInInventory(oDC2);
    }

    // remove equipted items if required
    if (nLoot && !nStrip)
    {
        int i;
        for(i = 0; i < NUM_PC_INVENTORY_SLOTS; i++)
        {
            DestroyObject(GetItemInSlot(i, oDC2));
        }
    }
}
//::////////////////////////////////////////////////////////////////////////////
void DestroyCorpse(object oPC)
{
    string sID = GetsID(oPC);
    object oMod = GetModule();
    object oDC2 = GetLocalObject(oMod, "DC2" + sID);

    // revival VFX
    effect eEff = EffectVisualEffect(VFX_IMP_RAISE_DEAD);
    DelayCommand(2.1, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEff, GetLocation(oDC2)));

    // disassociate from ivisible corpse and clean up
    object oDC = GetLocalObject(oMod, "DeathCorpse" + sID);
    DeleteLocalString(oDC, "sID");
    DeleteLocalObject(oMod, "DC2" + sID);

    // remove inventory items
    object oItem = GetFirstItemInInventory(oDC2);
    while (GetIsObjectValid(oItem))
    {
        DestroyObject(oItem);
        oItem = GetNextItemInInventory(oDC2);
    }

    // remove equipted items if required
    if (!nLoot || nStrip)
    {
        int i;
        for(i = 0; i < NUM_PC_INVENTORY_SLOTS; i++)
        {
            DestroyObject(GetItemInSlot(i, oDC2));
        }
    }

    // destroy HotU friendly player corpse
    AssignCommand(oDC2, SetIsDestroyable(TRUE, FALSE, FALSE));
    DestroyObject(oDC2);
}
//::////////////////////////////////////////////////////////////////////////////
void CopyToFugue(object oDC)
{
    string sID = GetLocalString(oDC, "DC2Key");
    object oMod = GetModule();
    object oDC2 = GetLocalObject(oMod, "DC2" + sID);

    // create copy of HotU friendly player corpse
    object oCopyDC = CopyObject(oDC2, GetLocation(GetObjectByTag("HC_CORPSELOC")), OBJECT_INVALID);
    AssignCommand(oCopyDC, SetIsDestroyable(FALSE, FALSE, FALSE));

    // update stored corpse
    SetLocalObject(oMod, "DC2" + sID, oCopyDC);

    // remove inventory items
    object oItem = GetFirstItemInInventory(oDC2);
    while (GetIsObjectValid(oItem))
    {
        DestroyObject(oItem);
        oItem = GetNextItemInInventory(oDC2);
    }

    // remove equipted items if required
    if (!nLoot || nStrip)
    {
        int i;
        for(i = 0; i < NUM_PC_INVENTORY_SLOTS; i++)
        {
            DestroyObject(GetItemInSlot(i, oDC2));
        }
    }

    // destroy original HotU friendly player corpse
    AssignCommand(oDC2, SetIsDestroyable(TRUE, FALSE, FALSE));
    DestroyObject(oDC2);
}
//::////////////////////////////////////////////////////////////////////////////
object CopyFromFugue(object oOwner, object oDropper, object oDropped)
{
    string sID = GetLocalString(oDropped, "Name") + GetLocalString(oDropped, "Key");
    object oMod = GetModule();
    object oDC2 = GetLocalObject(oMod, "DC2" + sID);

    // if a corpse is still in area do not create new one.
    if(GetArea(oDC2) == GetArea(oDropper))
        return OBJECT_INVALID;

    // use drop location as default unless oDropper is logging out or dead
    location lLoc = GetLocation(oDropper);
    if(GetArea(oDropper) == OBJECT_INVALID || GetLocalInt(oDropper, "DEAD"))
    {
        lLoc = GetPersistentLocation(oMod, "DIED_HERE" + sID);

        // create random location to prevent stacking corpses
        float fRand = IntToFloat(d20(1))/10.0;
        vector vRand = Vector(0.0 + fRand, 0.6 + fRand, 0.0);
        vector vCorpse = GetPositionFromLocation(lLoc) + vRand;
        lLoc = Location(GetAreaFromLocation(lLoc), vCorpse, 0.0);

        DeleteLocalInt(oDropper, "DEAD");
    }

    // create copy HotU friendly player corpse
    object oCopyDC = CopyObject(oDC2, lLoc, OBJECT_INVALID);
    AssignCommand(oCopyDC, SetIsDestroyable(FALSE, FALSE, FALSE));
    ChangeToStandardFaction(oDC2, STANDARD_FACTION_COMMONER);

    // update association with new invisible corpse and store copy corpse
    object oDeathCorpse = CreateObject(OBJECT_TYPE_PLACEABLE, "DC", GetLocation(oCopyDC));
    SetLocalString(oDeathCorpse, "DC2Key", sID);
    SetLocalObject(oMod, "DC2" + sID, oCopyDC);

    // destroy original HotU friendly player corpse
    AssignCommand(oDC2, SetIsDestroyable(TRUE, FALSE, FALSE));
    DestroyObject(oDC2);

    return oDeathCorpse;
}
//::////////////////////////////////////////////////////////////////////////////
//void main(){}
