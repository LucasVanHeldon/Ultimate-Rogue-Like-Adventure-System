#include "encounter"
#include "nw_o0_itemmaker"
#include "x0_i0_stringlib"


string sCR0="nw_zombie01,nw_zombie02";
string sCR1="nw_zombie02";
string sCR3="nw_zombtyrant";
string sCR4="nw_zombwarr01,nw_zombwarr02";
string sCR8="nw_zombieboss";

void Fill(int CR,object o = OBJECT_SELF)
{
    switch(CR)
    {

    case 1:    PopulateVars(o,1,sCR1); break;
    case 3:    PopulateVars(o,3,sCR3); break;
    case 4:    PopulateVars(o,4,sCR4); break;
    case 8:    PopulateVars(o,8,sCR8); break;
    }
}



void main()
{
    PopulateVars(OBJECT_SELF,0,sCR0);
    Spawn();
}


