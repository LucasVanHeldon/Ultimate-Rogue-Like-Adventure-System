
#include "x0_i0_spawncond"
// include "inc_mmp" can crash toolset...
#include "inc_ai"
#include "inc_magic"
#include "inc_mmpspells"
#include "inc_mmpspells2"
#include "inc_mmpcast"


int AIR_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    int nHD = GetHitDice(OBJECT_SELF);

    if(nHD > 10)
        if(d6() < 3)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 15)
        if(d6() < 3)
        {
            MMP_CloudKill(oTarget);
            return 1;
        }

    if(nHD > 10)
        if(d6() < 3)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 10)
        if(d6() < 3)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 10)
        if(d6() < 3)
        {
            MMP_ElementalSwarm(oTarget);
            return 1;
        }

    if(nHD > 9)
        if(d6() < 3)
        {
            MMP_BallLightning(oTarget);
            return 1;
        }

    if(nHD > 8)
        if(d6() < 3)
        {
            MMP_PulseLightning(oTarget);
            return 1;

        }

    if(nHD > 8)
        if(d6() < 3)
        {
            MMP_NatureBalance(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 3)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 3 && nHD > 9)
        {
            MMP_ConeOfLightning(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 3)
        {
            MMP_IceStorm(oTarget);
            return 1;
        }

    if(nHD > 5)
        if(d6() < 3)
        {
            MMP_LightningBolt(oTarget);
            return 1;
        }


    if(d6() < 3)
        {
            MMP_WhirlWind(oTarget);
            return 1;
        }


    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_ElementalShield(OBJECT_SELF);
            return 1;
        }


    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_Boom(oTarget);
            return 1;
        }


    return 0;

}

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");

    // enter desired behaviour here
    switch(nCalledBy)
    {
    default:
        if( nPowers < (GetHitDice(OBJECT_SELF)))
        {
            if(AIR_SpecialAttack()==1)
            {
                SetLocalInt(OBJECT_SELF,"nPowers",nPowers+1);
            }
        }
        break;
    }
}
