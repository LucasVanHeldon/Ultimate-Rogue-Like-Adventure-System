//hcr3
// common function to return unique id for a pc.

string GetsID(object oPC)
{
   string sID = GetName(oPC) + GetPCPlayerName(oPC);
   return sID;
}
