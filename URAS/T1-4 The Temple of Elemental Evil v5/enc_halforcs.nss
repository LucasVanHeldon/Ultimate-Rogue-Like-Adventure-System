#include "encounter"
#include "nw_o0_itemmaker"

string sCR0="creature003,creature007";
string sCR2="creature001,creature004,creature008";
string sCR3="creature002";
string sCR4="creature005,creature009";
string sCR5="creature006,creature011,gragdish";
string sCR6="creature010";
string sCR7="brunk";
string sCR10="nw_bandit006,smigmal";



void Fill(int CR,object o = OBJECT_SELF)
{

    switch(CR)
    {

    case 2:    PopulateVars(o,2,sCR2); break;
    case 3:    PopulateVars(o,3,sCR3); break;
    case 4:    PopulateVars(o,4,sCR4); break;
    case 5:    PopulateVars(o,5,sCR5); break;
    case 6:    PopulateVars(o,6,sCR6); break;
    case 7:    PopulateVars(o,7,sCR7); break;
    case 10:   PopulateVars(o,10,sCR10);break;
    }
}


void main()
{
    SendMessageToPC(GetFirstPC(),"ENC Half-Orcs");

    PopulateVars(OBJECT_SELF,0,sCR0);
    //int EL = CalcEL(OBJECT_SELF);
    //if(EL > 1)
    //    SpawnCR(0.5);
    Spawn();

}


