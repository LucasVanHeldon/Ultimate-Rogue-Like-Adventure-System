/********************************************************************************
 *
 * Global Variables
 * These may be set on the object (see below)
 *
 ********************************************************************************/
                                                           // special swords (d100 == 100)


int iScimitar=50;
int iKatana = 70;
int iRapier = 100;

int iShortSword    = 40;
int iLongSword     = 80;
int iGreatSword    = 90;
int iBastardSword  = 100;

int iClub         = 10;
int iLightFlail   = 20;
int iHeavyFlail   = 30;
int iMorningStar  = 40;
int iMace         = 80;
int iLightHammer  = 90;
int iWarHammer    = 100;

int iHandAxe     = 30;
int iBattleAxe   = 60;
int iDwarvenAxe  = 80;
int iGreatAxe    = 100;

int iScythe  = 10;
int iSpear   = 50;
int iHalberd = 80;
int iTrident = 100;

// set to false to use only default game items
int bUseAddons=TRUE;

int bIdentified=TRUE;
// set to false if there is no bias towards items which hate Evil/Chaos
int bBiasGood=TRUE;

// if FALSE, it will not impose any order on combining bonuses vs something
// it could generate items with contradictory results :
//   ie a Long Sword +3 vs Evil with a +4 Attack Bonus vs Lawful Good and 1d4 Acid Damage vs Neutral
// if you want this chaos, set it to false.
int bCombineOrder=TRUE;

// if -1 chosen randomly
int iDamageBias = IP_CONST_DAMAGETYPE_DIVINE;

int iAlignBias = 39;
int iLawBias = 40;

// by default 5 or greater on a d10
int iEnhanceWeaponChance=5;

int iGoldMin    = 0;
int iGoldMax    = 100;

// If this is true Cleric and Magic user items are interchangeable between them
int bCrossCasting=FALSE;

// this is usually the level (in Hit Dice) at which the chest (or container) is valued
// it will generate items at around the level of the encounter, not the PC.
// setting this too high, results
int iChestLevel = -1;

// object item is placed on
object oObject = OBJECT_SELF;


// constants for stats
const int NONE=0;
const int STR=1;
const int INT=2;
const int DEX=3;
const int CON=4;
const int WIS=5;
const int CHA=6;

// if not NONE, set to one of the stats consts above
int iAbilityBias=NONE;

// Alignements AGAINST
const int ALL=0;
const int NEUTRAL=1;
const int LAW=2;
const int CHAOS=3;
const int GOOD=4;
const int EVIL=5;

// don't need this get rid of it
const int WEAPON_SLASH=1;
const int WEAPON_BLUNT=2;
const int WEAPON_DAGGER=3;
const int WEAPON_PIERCE=4;
const int WEAPON_OTHER=5;
const int WEAPON_ROD=6;
const int WEAPON_STAFF=7;
const int WEAPON_WAND=8;

// cleric only
const int T_HOLYMACE=1;

// only useable by Dwarf Fighter
const int T_GOBLINHAMMER=2;
const int T_ORCSLAYER=3;
const int T_GIANTSLAYER=4;

// only useable by elfens
const int T_ELFENSWORD=5;
const int T_ELFENBOW=6;

// only usable by sorcerors
const int T_SWORDOFSORCERY=7;

// useable by most
const int T_MANY_VIRTUES=8;

// Fighter
const int T_GREAT_DAMAGE=9;
const int T_REGENERATION=10;

// Evil, level drain + vampiric regeneration
const int T_VAMPIRIC=11;

// only useable by alignment group
const int T_LAWFUL=12;
const int T_CHAOTIC=13;
const int T_GOOD=14;
const int T_EVIL=15;
// only good vs race
const int T_RACE=16;
// No longer used
const int T_ENHANCED=17;
// Not used
const int T_DEADLYSLEEP=20;
// Rogues and Monks
const int T_STUNNING=21;
// Not Used
const int T_SLOWNESS=22;
// Fighter
const int T_VORPAL=23;
// Fighter or Barbarian
const int T_WOUNDING=24;
// Evil, ability drain + regeneration
const int T_NEGATIVETOUCH=25;
// Lawful Good Paladin
const int T_DIVINEMIGHT=26;
// Fighter
const int T_DRAGONSLAYER=27;
// Wizard
const int T_BANISHMENT=28;


// the odds the item will have specific purpose
int SPECIAL         = 5;
int ALIGNMENT_FOCUS = 10;
int RACE_FOCUS      = 5;

int iSkillPointInc   = 4;


// these are set by nw_ch_default7 or manually
int bMagic=FALSE;
int bWeapon=FALSE;
int bArmor=FALSE;
int bWizard=FALSE;
int bCleric=FALSE;
int bRogue=FALSE;
int bFighter=FALSE;
int bPaladin=FALSE;
int bMonk=FALSE;
int bRanger=FALSE;
int bAbberation=FALSE;
int bDragon=FALSE;
int bUndead=FALSE;
int bGiant=FALSE;
int bBard = FALSE;
int bAssassin = FALSE;
int bMagicalBeast=FALSE;
int bDruid=FALSE;
int bOutsider=FALSE;


void CreateWeapon(int num, int type=-1);
void CreateArmor(int num, int type=-1);
void CreateShield(int num, int type=-1);
void CreateHelmet(int num, int type=-1);
void CreateMoney(int max, int min=0);
void CreateScrolls(int max);
void CreatePotions(int max);
void CreateGems(int num);
void CreateJewelry(int num);
void CreateBelt();
void CreateBoots();
void CreateBracers();
void CreateGauntlets();
// generates non-magical misc items
void CreateMisc(int num);
void CreateCloak();
void CreateMagicRingAmulet();
// rings, wands, staffs, rods,amulets
void CreateMagic(int num);
// bracers, cloaks, belts, etc
void CreateMiscMagic(int num);
void CreateStdPotion();
void CreateStdScroll();

// Generate a unique weapon with possible enchantments
void GenerateMeleeWeapon(int type = -1);
// Generate unique armor items with possible enchantments
void GenerateArmor();
void GenerateShield();
void GenerateHelmet();

// these functions decide how to generate items

// If true, it will only generate standard game items
// If false, it will generate unique as well as standard items
int bStandard=FALSE;
// Internal chance it will generate items rather than select stock items
int bGenChance=95;

// Generic Probabilities are low
int ChanceGems = 5;
int ChanceJewelry = 5;
int ChanceMagic=5;
int ChanceWeapon=10;
int ChanceArmor=10;
int ChanceArcaneScrolls=5;
int ChanceDivineScrolls=5;
int ChancePotions=10;
int ChanceShield=10;
int ChanceHelmet=10;
int ChanceMisc=10;
int ChancePoison=1;
int ChanceRangedWeapon=10;
int ChanceMiscMagic=0;
int ChanceAmmo = 15;
int ChanceGrenades = 10;
int ChanceBooks = 5;
int ChanceWands = 5;
int ChanceRods  = 5;
int ChanceStaffs = 5;
int ChanceRings = 5;
int ChanceAmulet = 5;
int ChanceBoots = 5;
int ChanceBracer = 5;
int ChanceGauntlet=5;
int ChanceCloak = 5;
int ChanceBelt = 5;

// One man's junk is another man's treasures
int ChanceTrash=1;

// Fight probabilities
int FtrChanceWeapon=50;
int FtrChanceRanged=30;
int FtrChanceAmmo=30;
int FtrChanceShield=35;
int FtrChanceHelmet=30;
int FtrChancePotions=50;

// wizard/sorcerer distribution probabilities
int WizChanceScrolls = 50;
int WizChanceMagic = 25;
int WizChanceMiscMagic=10;
int WizChanceRings = 10;
int WizChanceAmulets = 10;
int WizChanceBooks = 10;
int WizChanceWands = 10;
int WizChanceStaff = 100;
int WizChancePotions = 50;

// cleric, druid
int ClrChanceWeapon = 40;
int ClrChanceArmor  = 35;
int ClrChanceShield = 35;
int ClrChanceRings  = 10;
int ClrChanceAmulets = 10;
int ClrChanceRods   = 15;
int ClrChancePotions = 50;
int ClrChanceScrolls = 50;

int RogueChancePoison = 25;
int RogueChanceRanged = 50;
int RogueChanceAmmo   = 50;
int RogueChanceWeapon = 40;
int RogueChanceMisc   = 40;
int RogueChancePotions = 50;
int RogueChanceScrolls = 50;

// base level for item property upgrade
int IMBUE_ATTACK_BONUS = 1;
int IMBUE_ATTACK_BONUS_VS_RACE = 1;
int IMBUE_ATTACK_BONUS_VS_ALIGN = 1;        // alignment
int IMBUE_ATTACK_BONUS_VS_SALIGN = 1;      // Specific alignment
int IMBUE_ENHANCE = 3; // eg +1
int IMBUE_ENHANCE_VS_RACE = 3; // eg +1
int IMBUE_ENHANCE_VS_ALIGN = 3;
int IMBUE_ENHANCE_VS_SALIGN = 3;
int IMBUE_BONUS_FEAT=4;
int IMBUE_BONUS_SKILL=2;
int IMBUE_DAMAGE_BONUS=2;
int IMBUE_DAMAGE_BONUS_VS_RACE=2;
int IMBUE_DAMAGE_BONUS_VS_ALIGN=2;
int IMBUE_DAMAGE_BONUS_VS_SALIGN=2;
int IMBUE_ABILITY_BONUS=4;
int IMBUE_SAVE_BONUS=4;
int IMBUE_SAVE_THROW_BONUS=3;
int IMBUE_EXTRA_MELEE_DAMAGE=4;
int IMBUE_FREE_ACTION=7;
int IMBUE_HOLY_AVENGER=9;
int IMBUE_MASSIVE_CRITICAL=5;
int IMBUE_REGENERATION=7;
int IMBUE_VAMPIRIC_REGENERATION=7;
int IMBUE_ON_HIT=10;
int IMBUE_ON_HIT_CASTSPELL=10;
int IMBUE_SPELL_RESISTANCE=7;
int IMBUE_AC_BONUS=3;
int IMBUE_DAMAGE_IMMUNITY=10;
int IMBUE_DAMAGE_REDUCTION=9;
int IMBUE_DAMAGE_RESISTANCE=8;
int IMBUE_IMPROVED_EVASION=7;
int IMBUE_SPELL_FAILURE_DECREASE=7;
