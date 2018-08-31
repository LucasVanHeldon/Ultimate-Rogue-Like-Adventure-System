

int AIR_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    int nHD = GetHitDice(OBJECT_SELF);

    if(nHD > 15 )
        if(d6() < 4)
        {
            MMP_CloudKill(oTarget);
            return 1;
        }

    if(nHD > 10 )
        if(d6() < 4)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 10 )
        if(d6() < 4)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 10 )
        if(d6() < 4)
        {
            MMP_ElementalSwarm(oTarget);
            return 1;
        }

    if(nHD > 9 )
        if(d6() < 4)
        {
            MMP_BallLightning(oTarget);
            return 1;
        }

    if(nHD > 8 )
        if(d6() < 4)
        {
            MMP_PulseLightning(oTarget);
            return 1;

        }

    if(nHD > 8)
        if(d6() < 4)
        {
            MMP_NatureBalance(OBJECT_SELF);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_ChainLightning(oTarget);
            return 1;
        }

    if(nHD > 6 )
        if(d6() < 4 && nHD > 9)
        {
            MMP_ConeOfLightning(oTarget);
            return 1;
        }

    if(nHD > 5 )
        if(d6() < 4)
        {
            MMP_IceStorm(oTarget);
            return 1;
        }

    if(nHD > 4 )
        if(d6() < 4)
        {
            MMP_LightningBolt(oTarget);
            return 1;
        }


    if(d6() > 3 )
        {
            MMP_WhirlWind(oTarget);
            return 1;
        }


    if(nHD > 2 )
        if(d6() < 4)
        {
            MMP_ElementalShield(OBJECT_SELF);
            return 1;
        }


    if(d6() < 4 )
    {
        MMP_Boom(oTarget);
        return 1;
    }


    return 0;

}
