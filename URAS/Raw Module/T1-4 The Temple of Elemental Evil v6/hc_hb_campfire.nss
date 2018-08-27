
#include "hc_inc"

void main()
{
    int nCt=GetLocalInt(OBJECT_SELF,"BURNCOUNT");
    int nBT=GetLocalInt(oMod,"BURNTORCH");
    if((nBT && nCt+1 >= nBT *(FloatToInt(HoursToSeconds(3)/6.0))) ||
        nCt+1 > FloatToInt(HoursToSeconds(3)/6.0))
        DestroyObject(OBJECT_SELF);
    else
        SetLocalInt(OBJECT_SELF,"BURNCOUNT", nCt+1);
}
