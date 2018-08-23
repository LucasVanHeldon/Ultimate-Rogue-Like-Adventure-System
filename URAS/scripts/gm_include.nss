// Gambling Include

// Amount of gold in the house at the start of the server.
int HOUSESTART=100000;
object oGMHouse=GetModule();

void SetHouse(int nAmt)
{
    SetLocalInt(oGMHouse,"HOUSETOTAL",nAmt);
}

int GetHouse()
{
    return GetLocalInt(oGMHouse,"HOUSETOTAL");
}

int CheckPayout(int nAmt)
{
    if( (GetHouse()-nAmt) < 0)
    {
        nAmt=GetHouse();
        SetHouse(0);
        return nAmt;
    }
    return nAmt;
}

void AddHouse(int nAmt)
{
    SetHouse((nAmt+GetHouse()));
}

void SubHouse(int nAmt)
{
    if((GetHouse()-nAmt) < 0)
        SetHouse(0);
    else
        SetHouse((GetHouse()-nAmt));
}
