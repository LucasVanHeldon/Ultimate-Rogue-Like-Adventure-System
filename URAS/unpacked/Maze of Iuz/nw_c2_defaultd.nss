 //::///////////////////////////////////////////////
//:: Default: On User Defined
//:: NW_C2_DEFAULTD
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determines the course of action to be taken
    on a user defined event.
*/
//:://////////////////////////////////////////////
//:: Created By: Don Moar
//:: Created On: April 28, 2002
//:://////////////////////////////////////////////
void main()
{
    // enter desired behaviour here

    switch(GetLocalInt(OBJECT_SELF,"nTemplate"))
    {
    case 1: ExecuteScript("ud_prestidagtor",OBJECT_SELF); break;
    case 2: ExecuteScript("ud_evoker",OBJECT_SELF); break;
    case 3: ExecuteScript("ud_conjurer",OBJECT_SELF); break;
    case 4: ExecuteScript("ud_therugist",OBJECT_SELF); break;
    case 5: ExecuteScript("ud_magician",OBJECT_SELF); break;
    case 6: ExecuteScript("ud_aberration",OBJECT_SELF); break;
    case 7: ExecuteScript("ud_aludemon",OBJECT_SELF); break;
    case 8: ExecuteScript("ud_apostate",OBJECT_SELF); break;
    case 9: ExecuteScript("ud_demonic",OBJECT_SELF); break;
    case 10: ExecuteScript("ud_doom",OBJECT_SELF); break;
    case 11: ExecuteScript("ud_fallen",OBJECT_SELF); break;
    case 12: ExecuteScript("ud_halfair",OBJECT_SELF); break;
    case 13: ExecuteScript("ud_halfearth",OBJECT_SELF); break;
    case 14: ExecuteScript("ud_halffire",OBJECT_SELF); break;
    case 15: ExecuteScript("ud_halfwater",OBJECT_SELF); break;
    case 16: ExecuteScript("ud_heretical",OBJECT_SELF); break;
    case 17: ExecuteScript("ud_ooze",OBJECT_SELF); break;
    case 18: ExecuteScript("ud_oozedemon",OBJECT_SELF); break;
    case 19: ExecuteScript("ud_psychic",OBJECT_SELF); break;
    case 20: ExecuteScript("ud_unholy",OBJECT_SELF); break;
    }

    return;

}
