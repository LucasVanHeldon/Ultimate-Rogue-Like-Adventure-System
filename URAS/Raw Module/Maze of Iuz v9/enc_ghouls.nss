#include "encounter"
#include "nw_o0_itemmaker"
#include "x0_i0_stringlib"




string sCR2="nw_ghoul";
string sCR4="nw_ghast";
string sCR5="nw_ghoullord";
string sCR6="ghoul001,toh_oozeghast,toh_scumghast";
string sCR8="toh_unholyghoul";
string sCR10="nw_ghoulboss,toh_darkghast";

string sCR12="ghast001";
string sCR13="toh_demonic_ghul";

string sCR16="zep_reaver_001";






void Fill(int CR,object o = OBJECT_SELF)
{
    switch(CR)
    {
    case 2:    PopulateVars(o,2,sCR2); break;
    case 4:    PopulateVars(o,4,sCR4); break;
    case 5:    PopulateVars(o,5,sCR5); break;
    case 6:    PopulateVars(o,6,sCR6); break;
    case 8:    PopulateVars(o,8,sCR8); break;
    case 10:     PopulateVars(o,10,sCR10);break;
    case 12:    PopulateVars(o,12,sCR12);break;
    case 13:    PopulateVars(o,13,sCR13);break;
    case 16:    PopulateVars(o,16,sCR16);break;
    }
}



void main()
{
    Spawn();

}


