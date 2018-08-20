#include "x0_i0_partywide"
int StartingConditional()
{
    int iResult;

    iResult =  (GetLocalInt(GetModule(),"bJobContract") == 1) &&  GetIsItemPossessedByParty(GetPCSpeaker(),
                                                    GetLocalString(GetModule(),"sJobContractItem"));

    return iResult;
}
