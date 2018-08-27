// Debris: player sustains 2d6 damages (reflex save for half) - actual damage is on the on-exit event
// (dwarves detect it on the on-enter)

#include "nw_i0_plot"

void Dust(object oPC)
{
    //effect eDust = EffectDamage(1000);
    effect eDust = EffectVisualEffect(353);
    vector vPos = GetPosition(oPC);
    vector vPos1 = vPos;
    vector vPos2 = vPos;
    vector vPos3 = vPos;
    vector vPos4 = vPos;
    vPos1.z += 10;
    vPos2.z += 10;
    vPos3.z += 10;
    vPos4.z += 10;
    vPos1.x += 1;
    vPos2.x -= 1;
    vPos3.y += 1;
    vPos4.y -= 1;
    location lLoc1 = Location(GetArea(OBJECT_SELF), vPos1, 0.0);
    location lLoc2 = Location(GetArea(OBJECT_SELF), vPos2, 0.0);
    location lLoc3 = Location(GetArea(OBJECT_SELF), vPos3, 0.0);
    location lLoc4 = Location(GetArea(OBJECT_SELF), vPos4, 0.0);
//    if(GetLocalInt(OBJECT_SELF, "PLAYERS_AWARE_OF_DEBRIS") == 1)
//        location lLoc = GetLocation(OBJECT_SELF);
//    else
        location lLoc = GetLocation(oPC);
    object oBoulder = CreateObject(OBJECT_TYPE_PLACEABLE, "plc_piercer", lLoc);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDust, oBoulder);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eDust, lLoc1);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eDust, lLoc2);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eDust, lLoc3);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eDust, lLoc4);
}

void main()
{
    object oPC = GetEnteringObject();
    if(!GetIsPlayerCharacter(oPC))
        return;
    int nDamage = d12(4); // 4-48pts of damage possible
//    effect eVis = EffectVisualEffect(VFX_FNF_SCREEN_SHAKE);
    int nTriggered = GetLocalInt(OBJECT_SELF, "TRIGGERED");
    if(nTriggered == 1)
        return;
//    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
    AssignCommand(oPC, PlaySound("as_na_rockcavsm2"));
    SetLocalInt(OBJECT_SELF, "TRIGGERED", 1);

    DelayCommand(0.1, Dust(oPC));
    //DelayCommand(0.3, Dust(oPC));
    DelayCommand(0.7, Dust(oPC));

//    if(GetLocalInt(OBJECT_SELF, "PLAYERS_AWARE_OF_DEBRIS") == 1)
//        return;
    int iTShield = BASE_ITEM_TOWERSHIELD;
    int iLShield = BASE_ITEM_LARGESHIELD;
    int iSShield = BASE_ITEM_SMALLSHIELD;
    object oLeftHand = GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC);

    nDamage = GetReflexAdjustedDamage(nDamage, oPC, 18);
    if(nDamage > 0)
    {
     if(GetBaseItemType(oLeftHand) == iTShield)  //Checks to see if PC has a Towershield equipted
        {
        effect eDam = EffectDamage(nDamage/4, DAMAGE_TYPE_PIERCING); //divides damage by 4
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        AssignCommand(oPC,SpeakString("Your tower shield provides good protection from the falling stalactites!"));
        }
     else if(GetBaseItemType(oLeftHand) == iLShield) //Checks to see if PC has a Large Shield equipted
        {
        effect eDam = EffectDamage(nDamage/3, DAMAGE_TYPE_PIERCING); //divides damage by 3
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        AssignCommand(oPC,SpeakString("Your large shield provides some protection from the falling stalactites!"));
        }
     else if(GetBaseItemType(oLeftHand) == iSShield) //checks to see if PC has a Small Shield equipted
        {
        effect eDam = EffectDamage(nDamage/2, DAMAGE_TYPE_PIERCING); //divides damage by 2
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        AssignCommand(oPC,SpeakString("Your small shield provides a little, if any, protection from the falling stalactites!"));
        }
     else
        {
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);  //full damage for not having a shield equipted
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        }
    }
}
