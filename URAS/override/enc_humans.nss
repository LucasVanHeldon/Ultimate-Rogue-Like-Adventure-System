#include "encounter"
#include "nw_o0_itemmaker"

string sCR0="bandit,bandit001,bandit002,bandit003,bandit004,nw_bandit001,nw_bandit002,nw_guard,nw_gypfemale,nw_gypmale,nw_gypsy001,nw_gypsy002,nw_kurthsold,nw_luskanite,nw_noblfemale,nw_noblmale,nw_plagmale,nw_werecat001,nw_wererat001,nw_werewolf001";
string sCR1="bandit010,bandit015,brigand,brigand001,brigand003,brigand006,brigand007,evilwizard,nw_bandit003,nw_uthgard01,nw_uthgard02";
string sCR2="bandit005,bandit009,bandit014,brigand002,brigandleader,hartsch001,nw_humanmerc001,sergeant,templeguard,templeguard001,templeguard002,templeguard003,templeguard004,x3_hummount001";
string sCR3="bandit007,bandit011,bandit016,brigand074,brigand161,hartsch,lieutenant,nw_bandit004,nw_humanmerc002,templeguard005,watertempleunder";
string sCR4="bandit006,bandit012,bandit018,brigand004,brigand005,brigand008,curate,lareth,nw_bandit005,nw_gypsy003,nw_gypsy004,romag,temple,templecommand001,templecommander,timo,turnkey";
string sCR5="bandit008,bandit013,bandit017,brigand015,brigandleader001,canon";
string sCR6="brigand010,brigand160,brigand162,nw_humanmerc003,perfect";
string sCR7="brigand035,feldrin";
string sCR8="grank,nw_gypsy005,nw_humanmerc004";
string sCR9="barkinar";
string sCR10="jaer,nw_gypsy007";
string sCR11="brigand009,darley,nw_bandit007,nw_gypsy006,nw_humanmerc005,sargen";
string sCR12="senshock";
string sCR13="hedrack";
string sCR14="nw_humanmerc006";
string sCR24="x3_halaster";

void Fill(int CR,object o = OBJECT_SELF)
{

    switch(CR)
    {
    case 1:    PopulateVars(o,1,sCR1); break;
    case 2:    PopulateVars(o,2,sCR2); break;
    case 3:    PopulateVars(o,3,sCR3); break;
    case 4:    PopulateVars(o,4,sCR4); break;
    case 5:    PopulateVars(o,5,sCR5); break;
    case 6:    PopulateVars(o,6,sCR6); break;
    case 7:    PopulateVars(o,7,sCR7); break;
    case 8:    PopulateVars(o,8,sCR8); break;
    case 9:    PopulateVars(o,9,sCR9); break;
    case 10:   PopulateVars(o,10,sCR10);break;
    case 11:   PopulateVars(o,11,sCR11);break;
    case 12:    PopulateVars(o,CR,sCR12);break;
    case 13:    PopulateVars(o,CR,sCR13);break;
    case 14: PopulateVars(o,CR,sCR14);break;
    case 24: PopulateVars(o,24,sCR24);break;
    }
}


void main()
{
    SendMessageToPC(GetFirstPC(),"ENC Humans");

    PopulateVars(OBJECT_SELF,0,sCR0);
    int EL = CalcEL(OBJECT_SELF);
    if(EL > 1)
        SpawnCR(0.5);
    Spawn();

}


