#include "x0_i0_partywide"
void main()
{
    RemoveItemFromParty(GetPCSpeaker(),GetLocalString(GetModule(),"sJobContractItem"));
    GiveGoldToAll(GetPCSpeaker(),500);
}
