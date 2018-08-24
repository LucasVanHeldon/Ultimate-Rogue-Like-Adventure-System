#include "x2_inc_itemprop"
#include "NW_O2_CONINCLUDE"
#include "NW_I0_GENERIC"

#include "lutes_vars"


#include "lutes_inc"
#include "lutes_alignrace"
#include "lutes_utils"
#include "lutes_imbue"
#include "lutes_armor"
#include "lutes_earmor"
#include "lutes_weapons"
#include "lutes_encweapon"
#include "lutes_scrpotions"
#include "lutes_magic"
#include "lutes_ringamulet"
#include "lutes_items"
#include "lutes_ranged"
#include "lutes_clothing"
#include "lutes_addons"


// set this higher if you want munchkin style treasure
int iLootModifier = 1;

int MonkChanceBelt = 20;
int MonkChanceCloak = 20;
int MonkChanceBoots = 20;
int MonkChanceGauntlet = 20;
int MonkChanceRings = 10;
int MonkChanceAmulets = 10;
int MonkChancePotions=40;

float random()
{
    return IntToFloat(Random(10000))/10000.0;
}

void Lutes(object oTarget)
{
    int i,n;
    oObject = oTarget;
    if(iChestLevel == -1)
        iChestLevel = GetHitDice(oObject);

    int nGold = Random(100*iChestLevel);

    // distribution modify this as you see fit.
    int nGems= 0;
    int nJewls=0;
    int nMagic=0;
    int nMisc2 = 0;
    int nWeapon=0;
    int nArmor=0;
    int nAScrolls=0;
    int nDScrolls=0;
    int nPotions=0;
    int nShield=0;
    int nHelmet=0;
    int nMisc=0;
    int nPoison=0;
    int nMiscMagic=0;
    int nRanged =0;

    int nAmmo=0;
    int nGrenades=0;
    int nBooks =0;
    int nWands =0;
    int nRods =0;
    int nStaff=0;
    int nRings =0;
    int nAmulets =0;
    int nBoots =0;
    int nBracer =0;
    int nBelt =0;
    int nGauntlet =0;
    int nCloak =0;
    int nTrash =0;


    float fLootMod = 0.5*GetLocalFloat(GetModule(),"fLootMod");
    float x        = fLootMod*IntToFloat(iChestLevel);

    iLootModifier = FloatToInt(x);

    for(i = 0; i < iLootModifier; i++)
    {
        switch(Random(27))
        {
        case 0: nGems++; break;
        case 1: nJewls++;break;
        case 2: nMagic++;      break;
        case 3: nWeapon++;break;
        case 4: nArmor++;break;
        case 5: nAScrolls++;break;
        case 6: nDScrolls++;break;
        case 7: nPotions++;break;
        case 8: nShield++;break;
        case 9: nHelmet++;break;
        case 10: nMisc++;break;
        case 11: nPotions++;break;
        case 12: nMiscMagic++;break;
        case 13: nRanged++;break;
        case 14: nAmmo++;break;
        case 15: nGrenades++;break;
        case 16: nBooks++;break;
        case 17: nWands++;break;
        case 18: nRods++;break;
        case 19: nStaff++;break;
        case 20: nRings++;break;
        case 21: nAmulets++;break;
        case 22: nBoots++;break;
        case 23: nBracer++;break;
        case 24: nBelt++;break;
        case 25: nGauntlet++;break;
        case 26: nCloak++;break;
        case 27: nTrash++;break;
        }
    }


    int chance = FloatToInt(fLootMod*10000.0);
    if(Random(10000) < chance)
    {
        if( (bFighter == TRUE || bGiant == TRUE || bPaladin == TRUE || bRanger == TRUE))
        {
            nWeapon   += d100() <= FtrChanceWeapon? d2():0;
            nRanged   += d100() <= FtrChanceRanged? d2() : 0;
            nAmmo     += d100() <= FtrChanceAmmo?   d3() : 0;
            nShield   += d100() <= FtrChanceShield? 1:0;
            nHelmet   += d100() <= FtrChanceHelmet? 1:0;
            nGrenades += d3();
            nPotions  += d100() < FtrChancePotions? d3():0;

        }

        else if( (bMonk == TRUE))
        {
            nBelt      += d100() <= MonkChanceBelt?       1:0;
            nCloak     += d100() <= MonkChanceCloak?      1:0;
            nBoots     += d100() <= MonkChanceBoots?      1:0;
            nGauntlet  += d100() <= MonkChanceGauntlet?   1:0;

            nRings     += d100() <= MonkChanceRings?   d2():0;
            nAmulets   += d100() <= MonkChanceAmulets? d2():0;
            nPotions   += d100() <= MonkChancePotions? d4():0;

        }

        else if(( bWizard == TRUE))
        {

            nAScrolls  += d100() <= WizChanceScrolls? d4():0;
            nMagic     += d100() <= WizChanceMagic? 1:0;
            nMiscMagic += d100() <= WizChanceMiscMagic? 1:0;
            nRings     += d100() <= WizChanceRings? d2():0;
            nAmulets   += d100() <= WizChanceAmulets? d2():0;
            nBooks     += d100() <= WizChanceBooks? d3():0;
            nWands     += d100() <= WizChanceWands? d3():0;
            nStaff     += d100() <= WizChanceStaff? 1:0;
            nPotions   += d100() <= WizChancePotions? d4():0;

        }
        else if(( bCleric == TRUE || bDruid == TRUE))
        {

            nWeapon    += d100() <= ClrChanceWeapon?1:0;
            nArmor     += d100() <= ClrChanceArmor?1:0;
            nShield    += d100() <= ClrChanceShield?1:0;
            nRings     += d100() <= ClrChanceRings?d2():0;
            nAmulets   += d100() <= ClrChanceAmulets?1:0;
            nRods      += d100() <= ClrChanceRods? 1:0;
            nPotions   += d100() <= ClrChancePotions? d4():0;
            nDScrolls  += d100() <= ClrChanceScrolls? d4():0;


        }
        else if(( bRogue == TRUE || bAssassin == TRUE))
        {
            nGems    += d4();
            nJewls   += d3();
            nPoison  += d100() < RogueChancePoison? d3():0;
            nRanged  += d100() < RogueChanceRanged? 1:0;
            nAmmo    += d100() < RogueChanceAmmo? d3():0;
            nWeapon  += d100() <= RogueChanceWeapon? 1:0;
            nPotions   += d100() <= RogueChancePotions? d4():0;
            nAScrolls  += d100() <= RogueChanceScrolls? d4():0;

        }
        else if(( bDragon == TRUE))
        {
            nGems  = Random(Die(100)+iChestLevel);
            nGold  = d4(iChestLevel)*1000;
            nJewls = iChestLevel;
            nRings    = Random(6);
            nAmulets  = Random(4);

            PrintString("Dragon Drop");
         }
    }

    if(nGems > 0)      CreateGems(nGems);
    if(nGold > 0 )     CreateMoney(nGold);
    if(nJewls > 0)     CreateJewelry(nJewls);
    if(nWeapon > 0)    PlaceWeapon(nWeapon);
    if(nArmor > 0)     PlaceArmor(nArmor);
    if(nShield > 0)    PlaceShield(nShield);
    if(nHelmet > 0)    PlaceHelmet(nHelmet);
    if(nRanged > 0)    PlaceRangedWeapon(nRanged);
    if(nAmmo > 0)      PlaceAmmo(nAmmo);

    if(nPotions > 0)    CreatePotions(nPotions);
    if(nAScrolls > 0)   CreateArcaneScrolls(nAScrolls);
    if(nDScrolls > 0)   CreateDivineScrolls(nDScrolls);

    if(nBooks > 0)      PlaceSpellBooks(nBooks);
    if(nWands > 0)      PlaceWand(nWands);
    if(nRods > 0)       PlaceRod(nRods);
    if(nStaff > 0)      PlaceStaff(nStaff);
    if(nRings > 0)      PlaceRings(nRings);
    if(nAmulets > 0)    PlaceAmulets(nAmulets);

    if(nBoots > 0) GenerateBoots();
    if(nGauntlet > 0) GenerateGauntlet();
    if(nBracer > 0) GenerateBracer();
    if(nBelt > 0) GenerateBelt();
    if(nCloak > 0) GenerateCloak();
    if(bUseAddons == TRUE)
    {
        // need to sort only useful properties for these
        //if(nGrenades > 0)   PlaceGrenades(nGrenades);
        if(nTrash > 0) GenerateTrash();
        if(nMisc > 0)      CreateMisc(nMisc);
        if(nMisc2 > 0)     PlaceMiscItems(nMisc);
    }
}




