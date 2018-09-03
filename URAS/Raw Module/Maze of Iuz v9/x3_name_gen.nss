#include "inc_nametables"

void main()
{
    string s = OrcAndGoblins();
    int race = GetRacialType(OBJECT_SELF);
    switch(race)
    {
    case RACIAL_TYPE_HALFELF:
    case RACIAL_TYPE_HUMAN:
        switch(GetGender(OBJECT_SELF))
        {
        case GENDER_FEMALE: s = RandomName(NAME_FIRST_HUMAN_FEMALE); break;
        default: s = RandomName(NAME_FIRST_HUMAN_MALE); break;
        }
        break;
    case RACIAL_TYPE_ELF:
        switch(GetGender(OBJECT_SELF))
        {
        case GENDER_FEMALE: s = RandomName(NAME_FIRST_ELF_FEMALE); break;
        default: s = RandomName(NAME_FIRST_ELF_MALE); break;
        }
        break;
    case RACIAL_TYPE_DWARF:
        switch(GetGender(OBJECT_SELF))
        {
        case GENDER_FEMALE: s = RandomName(NAME_FIRST_DWARF_FEMALE); break;
        default: s = RandomName(NAME_FIRST_DWARF_MALE); break;
        }
        break;
    case RACIAL_TYPE_HALFLING:
        switch(GetGender(OBJECT_SELF))
        {
        case GENDER_FEMALE: s = RandomName(NAME_FIRST_HALFLING_FEMALE); break;
        default: s = RandomName(NAME_FIRST_HALFLING_MALE); break;
        }
        break;
    case RACIAL_TYPE_GNOME:
        switch(GetGender(OBJECT_SELF))
        {
        case GENDER_FEMALE: s = RandomName(NAME_FIRST_GNOME_FEMALE); break;
        default: s = RandomName(NAME_FIRST_GNOME_MALE); break;
        }
        break;
    case RACIAL_TYPE_ABERRATION:
        s = Aberration();
        break;
    case RACIAL_TYPE_OUTSIDER:
        s = Demons();
        break;
    case RACIAL_TYPE_HUMANOID_GOBLINOID:
    case RACIAL_TYPE_HUMANOID_ORC:
        s = OrcAndGoblins();
        break;
    case RACIAL_TYPE_HUMANOID_REPTILIAN:
        s = Reptilian();
        break;
    case RACIAL_TYPE_GIANT:
        s = Giant();
        break;

    case RACIAL_TYPE_ANIMAL:
    case RACIAL_TYPE_MAGICAL_BEAST:
    case RACIAL_TYPE_BEAST:
    case RACIAL_TYPE_HUMANOID_MONSTROUS:
        s = Beasts();
        break;
    case RACIAL_TYPE_UNDEAD:
        s = Undead();
        break;
    }

    SetLocalString(OBJECT_SELF,"X3_S_RANDOM_NAME",s);
}
