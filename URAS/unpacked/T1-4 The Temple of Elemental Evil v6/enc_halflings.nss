#include "encounter"
#include "nw_o0_itemmaker"

string sCR1="nw_halfmerc001";
string sCR3="nw_halfmerc002";
string sCR5="nw_halfmerc003";
string sCR7="nw_halfmerc004";
string sCR10="nw_halfling015,nw_halfmerc005";
string sCR13="nw_halfmerc006";

void Fill(int CR,object o = OBJECT_SELF)
{

    switch(CR)
    {

    case 1:    PopulateVars(o,1,sCR1); break;
    case 3:    PopulateVars(o,3,sCR3); break;
    case 5:    PopulateVars(o,5,sCR5); break;
    case 7:    PopulateVars(o,7,sCR7); break;
    case 10:   PopulateVars(o,10,sCR10);break;
    case 13:   PopulateVars(o,13,sCR13);break;
    }
}


void main()
{
    Spawn();

}


