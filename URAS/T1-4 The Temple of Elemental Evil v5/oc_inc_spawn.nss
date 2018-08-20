void RunOnce(object o)
{
    int isOk = FALSE;
    string s = GetName(GetArea(OBJECT_SELF));

    // spawn the difficulty wizard into the module
    if(FindSubString(s,"Kendrack") != -1)
    {
        if(!GetLocalInt(GetModule(),"bDiffWiz"))
        {
            SetLocalInt(GetModule(),"bDiffWiz",1);
            CreateObject(OBJECT_TYPE_CREATURE,"lomendir",GetLocation(GetWaypointByTag("NW_HENCHMAN_BAR")));
        }
    }
    else if(FindSubString(s,"Hall of Justice") != -1)
    {
        if(!GetLocalInt(GetModule(),"bDiffWiz"))
        {
            SetLocalInt(GetModule(),"bDiffWiz",1);
            // there isn't really a great spot for him in this area...
            CreateObject(OBJECT_TYPE_CREATURE,"lomendir",GetLocation(GetWaypointByTag("NIGHT_M1Q1ACitizen01")));
        }
    }
    else if(FindSubString(s,"Ritual Chamber") != -1)
    {
        if(!GetLocalInt(GetModule(),"bDiffWiz"))
        {
            SetLocalInt(GetModule(),"bDiffWiz",1);
            CreateObject(OBJECT_TYPE_CREATURE,"lomendir",GetLocation(GetWaypointByTag("NW_HENCHMAN_BAR")));
        }
    }

    // check port llast, and generally don't spawn in houses and inns
    if(FindSubString(s,"House")==-1 &&
       FindSubString(s,"Barn") == -1 &&
       FindSubString(s,"Port") == -1 &&
       FindSubString(s,"Llast") == -1 &&
       FindSubString(s,"Jax") == -1 &&
       FindSubString(s,"Inn") == -1 &&
       FindSubString(s,"Tavern") == -1 &&
       // at this moment no random encounters in chapter 1
       FindSubString(s,"City Core") == -1 &&
       FindSubString(s,"Blacklake") == -1 &&
       FindSubString(s,"Docks") == -1 &&
       FindSubString(s,"Peninsula") == -1 &&
       // Don't let them spawn in Lord Nasher's place in 1e
       FindSubString(s,"Ritual Chamber") == -1) isOk = TRUE;

    if(isOk)
    {
        CreateObject(OBJECT_TYPE_PLACEABLE,"randomencounters",GetLocation(o));
    }
    SetLocalInt(GetArea(o),"bRunOnce",1);

}

void OC_RunOnce()
{
    if(GetLocalInt(GetArea(OBJECT_SELF),"bRunOnce")==0)
            DelayCommand(0.1,RunOnce(OBJECT_SELF));

        // correct the names of objects which have their name in cep260.tlk (can't inject it)
        if(GetTag(OBJECT_SELF) == "ZEP_OWLBEAR")
            SetName(OBJECT_SELF,"Owlbear");
}
