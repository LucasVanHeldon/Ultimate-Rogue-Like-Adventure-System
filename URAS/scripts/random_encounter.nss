

void ResetEncounters()
{
    object oArea = GetFirstArea();
    while(GetIsObjectValid(oArea))
    {
        object oE = GetFirstObjectInArea(oArea);
        while(GetIsObjectValid(oE))
        {
            if(GetObjectType(oE) == OBJECT_TYPE_ENCOUNTER)
            {
                SetEncounterActive(TRUE,oE);
            }
            oE = GetNextObjectInArea(oArea);
        }
        oArea = GetNextArea();
    }
}


void SpawnTable(location loc)
{
    switch(Random(28)+1)
    {
    case 1: CreateObject(OBJECT_TYPE_CREATURE,"enc_aberration",loc); break;
    case 2: CreateObject(OBJECT_TYPE_CREATURE,"enc_undead",loc); break;
    case 3: CreateObject(OBJECT_TYPE_CREATURE,"enc_orcs",loc); break;
    case 4: CreateObject(OBJECT_TYPE_CREATURE,"enc_goblins",loc); break;
    case 5: CreateObject(OBJECT_TYPE_CREATURE,"enc_gnolls",loc); break;
    case 6: CreateObject(OBJECT_TYPE_CREATURE,"enc_ogres",loc); break;
    case 7: CreateObject(OBJECT_TYPE_CREATURE,"enc_trolls",loc); break;
    case 8: CreateObject(OBJECT_TYPE_CREATURE,"enc_hobgoblins",loc); break;
    case 9: CreateObject(OBJECT_TYPE_CREATURE,"enc_aberrate",loc); break;
    case 10: CreateObject(OBJECT_TYPE_CREATURE,"enc_undead",loc); break;
    case 11: CreateObject(OBJECT_TYPE_CREATURE,"enc_minotaur",loc); break;
    case 12: CreateObject(OBJECT_TYPE_CREATURE,"enc_beasts",loc); break;
    case 13: CreateObject(OBJECT_TYPE_CREATURE,"enc_construct",loc); break;
    case 14: CreateObject(OBJECT_TYPE_CREATURE,"enc_minions",loc); break;
    case 15: CreateObject(OBJECT_TYPE_CREATURE,"enc_animals",loc); break;
    case 16: CreateObject(OBJECT_TYPE_CREATURE,"enc_bandits",loc); break;
    case 17: CreateObject(OBJECT_TYPE_CREATURE,"enc_brigands",loc); break;
    case 18: CreateObject(OBJECT_TYPE_CREATURE,"enc_bugbears",loc); break;
    case 19: CreateObject(OBJECT_TYPE_CREATURE,"enc_dwarf",loc); break;
    case 20: CreateObject(OBJECT_TYPE_CREATURE,"enc_elf",loc); break;
    case 21: CreateObject(OBJECT_TYPE_CREATURE,"enc_elemental",loc); break;
    case 22: CreateObject(OBJECT_TYPE_CREATURE,"enc_halfling",loc); break;
    case 23: CreateObject(OBJECT_TYPE_CREATURE,"enc_human",loc); break;
    case 24: CreateObject(OBJECT_TYPE_CREATURE,"enc_magicalbeast",loc); break;
    case 25: CreateObject(OBJECT_TYPE_CREATURE,"enc_ooze",loc); break;
    case 26: CreateObject(OBJECT_TYPE_CREATURE,"enc_outsider",loc); break;
    case 27: CreateObject(OBJECT_TYPE_CREATURE,"enc_reptilian",loc); break;
    case 28: CreateObject(OBJECT_TYPE_CREATURE,"enc_shapechanger",loc); break;
    case 29: CreateObject(OBJECT_TYPE_CREATURE,"enc_dragon",loc); break;
    }
}
void main()
{
    object oPC = GetFirstPC();
    if(GetIsObjectValid(oPC))
    {
        //float f = IntToFloat(Random(32000))/32000.0;
        //if(f < 0.00075 || f > 0.9995) SpawnTable(GetLocation(oPC));
        //if(f < 0.00095 || f > 0.9991)

    }
}
