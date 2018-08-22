// hcr3.1
// took out sei xp code.
// sr6.0
// if still in fugue do not take xp.
// sr5.3
// not taking con pen for lvl 1 instead setting to it to 1 if your level 1.
#include "hc_text_health"

void SetUpExp(object oRespawner, int nFlg);

void hcRezPenalty(object oRespawner)
{

    if (GetLocalInt(GetModule(), "LIMBO"))
       if (GetArea(oRespawner) == GetArea(GetObjectByTag("FuguePlane")))
         return;
    object oMod = GetModule();
    string sID=GetName(oRespawner)+GetPCPlayerName(oRespawner);
    effect eRessickness;
    int nXP = GetXP(oRespawner);
    int nHD = GetHitDice ( oRespawner );
    if ( nHD == 1 )
        {
            if (nXP > 1)
              SetXP(oRespawner, nXP/2);
        }
        else
        {
            ExecuteScript("hc_take_level", oRespawner);
        }

}



