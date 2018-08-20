#include "encounter"
#include "nw_o0_itemmaker"
#include "x0_i0_stringlib"

string sCR3="x0_stinger";
string sCR4="nw_seahag";
string sCR5="nw_minotaur,x0_medusa,x0_stinger_mage,x0_stinger_war,x2_harpy001";

string sCR7="x0_stinger_chief";
string sCR8="toee_minotaurbrb";
string sCR9="nw_minchief,nw_minwiz";
string sCR10="toee_minostalker";

string sCR14="nw_minotaurboss";

string sCR11="nw_orcboss";

void Fill(int CR,object o = OBJECT_SELF)
{
    switch(CR)
    {
    case 3:    PopulateVars(o,3,sCR3); break;
    case 4:    PopulateVars(o,4,sCR4); break;
    case 5:    PopulateVars(o,5,sCR5); break;

    case 7:    PopulateVars(o,7,sCR7); break;
    case 8:    PopulateVars(o,8,sCR8); break;
    case 9:    PopulateVars(o,9,sCR9); break;
    case 10:    PopulateVars(o,10,sCR10); break;

    case 14:    PopulateVars(o,14,sCR14); break;
    }
}



void main()
{
    SendMessageToPC(GetFirstPC(),"ENC Monstrous");
    //int EL = CalcEL(OBJECT_SELF);
    //if(EL > 1)
     //   SpawnCR(0.5);

    Spawn();
}


