//::///////////////////////////////////////////////
//:: Name: JR_LOAD_HENCHMAN
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
   Get's DB for Henchmen already hired from pre-qual Module and adds them back
   into PC's party (with all previous inventory intact). Then checks for
   Henchmen that are not part of PC's party and creates them at the starting
   point.

   It looks kinda bulky, and may need some script-trimming, but it does the job.

*/
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: January 16, 2005
//:://////////////////////////////////////////////

#include "x0_i0_henchman"

string BLODGETT_TAG = "Blodgett";
string DREAD_TAG = "Dread";
string ELWITA_TAG = "Elwita";
string KARRAWAY_TAG = "Karraway";
string KAYEN_TAG = "Kayen";
string OGRE_TAG = "Ogre";
string ZEB_TAG = "Zeb";

void DoSaveGame()
{
    object oPC = GetEnteringObject();
    if(!GetIsPC(oPC))
        return;
    int nDoOnce = GetLocalInt(OBJECT_SELF, "DO_SAVE_GAME_ONCE");
    if(nDoOnce == 1)
        return;
    SetLocalInt(OBJECT_SELF, "DO_SAVE_GAME_ONCE", 1);
    DoSinglePlayerAutoSave();

}

void main()
{
    object oPC = GetEnteringObject();
    if(GetLocalInt(oPC, "LOAD_HENCHMAN") == 2)
        return;
    if(!GetIsPC(oPC))
        return;
    RetrieveCampaignHenchman(oPC);
    SetLocalInt(oPC, "LOAD_HENCHMAN", 2);
    DoSaveGame();

object oBlodgett = GetObjectByTag(BLODGETT_TAG);
object oDread = GetObjectByTag(DREAD_TAG);
object oElwita = GetObjectByTag(ELWITA_TAG);
object oKarraway = GetObjectByTag(KARRAWAY_TAG);
object oKayen = GetObjectByTag(KAYEN_TAG);
object oOgre = GetObjectByTag(OGRE_TAG);
object oZeb = GetObjectByTag(ZEB_TAG);
object oBlodgettWP = GetWaypointByTag("POST_blodgett");
object oDreadWP = GetWaypointByTag("POST_dread");
object oElwitaWP = GetWaypointByTag("POST_elwita");
object oKarrawayWP = GetWaypointByTag("POST_karraway");
object oKayenWP = GetWaypointByTag("POST_kayen");
object oOgreWP = GetWaypointByTag("POST_ogre");
object oZebWP = GetWaypointByTag("POST_zeb");

    // Do the global henchman check only once for the module
int nDoOnce = GetLocalInt(GetModule(), "DO_HENCHMAN_CHECK_ONCE");
    if (nDoOnce == 0)
    {
        SetLocalInt(GetModule(), "DO_HENCHMAN_CHECK_ONCE", 1);

//If Henchman is not already part of the PC's Party, then create Henchman at oWP.
        if(oBlodgett == OBJECT_INVALID)
        {
            oBlodgett = RetrieveCampaignObject("dbHenchmen", "xp0_blodgett", GetLocation(oBlodgettWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_blodgett");
        }
        if(oDread == OBJECT_INVALID)
        {
            oDread = RetrieveCampaignObject("dbHenchmen", "xp0_dread", GetLocation(oDreadWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_dread");
        }
        if(oElwita == OBJECT_INVALID)
        {
            oElwita = RetrieveCampaignObject("dbHenchmen", "xp0_elwita", GetLocation(oElwitaWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_elwita");
        }
        if(oKarraway == OBJECT_INVALID)
        {
            oKarraway = RetrieveCampaignObject("dbHenchmen", "xp0_karraway", GetLocation(oElwitaWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_karraway");
        }
        if(oKayen == OBJECT_INVALID)
        {
            oKayen = RetrieveCampaignObject("dbHenchmen", "xp0_kayen", GetLocation(oElwitaWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_kayen");
        }
        if(oOgre == OBJECT_INVALID)
        {
            oOgre = RetrieveCampaignObject("dbHenchmen", "xp0_ogre", GetLocation(oElwitaWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_ogre");
        }
        if(oZeb == OBJECT_INVALID)
        {
            oZeb = RetrieveCampaignObject("dbHenchmen", "xp0_zeb", GetLocation(oElwitaWP));
            DeleteCampaignVariable("dbHenchmen", "xp0_zeb");
        }

        if(oBlodgett == OBJECT_INVALID)
           {
            oBlodgett = CreateObject(OBJECT_TYPE_CREATURE, "blodgett", GetLocation(oBlodgettWP));
           }
        if(oDread == OBJECT_INVALID)
           {
            oDread = CreateObject(OBJECT_TYPE_CREATURE, "dread", GetLocation(oDreadWP));
           }
        if(oElwita == OBJECT_INVALID)
           {
            oElwita = CreateObject(OBJECT_TYPE_CREATURE, "elwita", GetLocation(oElwitaWP));
           }
        if(oKarraway == OBJECT_INVALID)
           {
            oKarraway = CreateObject(OBJECT_TYPE_CREATURE, "karraway", GetLocation(oKarrawayWP));
           }
        if(oKayen == OBJECT_INVALID)
           {
            oKayen = CreateObject(OBJECT_TYPE_CREATURE, "kayen", GetLocation(oKayenWP));
           }
        if(oOgre == OBJECT_INVALID)
           {
            oOgre = CreateObject(OBJECT_TYPE_CREATURE, "ogre", GetLocation(oOgreWP));
           }
        if(oZeb == OBJECT_INVALID)
           {
            oZeb = CreateObject(OBJECT_TYPE_CREATURE, "zeb", GetLocation(oZebWP));
           }
    }
}


