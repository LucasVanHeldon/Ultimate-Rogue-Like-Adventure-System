int WATER_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    int nHD = GetHitDice(OBJECT_SELF);

    if(!GetIsObjectValid(oTarget))
    {
        switch(d3())
        {
        case 1: oTarget = FindWeakestEnemy(OBJECT_SELF); break;
        case 2: oTarget = FindStrongestEnemy(OBJECT_SELF); break;
        case 3: oTarget = FindNearestEnemy(OBJECT_SELF); break;
        }
    }
    if(nHD > 20)
        if(d6() < 4)
        {
            MMP_HorridWilting(oTarget);
            return 1;
        }

    if(nHD > 11)
        if(d6() < 4)
        {
            MMP_AcidFog(oTarget);
            return 1;
        }

    if(nHD > 10)
        if(d6() < 4)
        {
            MMP_MestilsAcidBreath(oTarget);
            return 1;
        }


    if(nHD > 9)
        if(d6() < 4)
        {
            MMP_AuraCold(OBJECT_SELF);
            return 1;
        }

    if(nHD > 8)
        if(d6() < 4)
        {
            MMP_MestilsAcidSheath(OBJECT_SELF);
            return 1;
        }


    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_Drown(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_ConeOfAcid(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_ConeOfCold(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_PulseCold(oTarget);
            return 1;
        }

    if(nHD > 6)
        if(d6() < 4)
        {
            MMP_PulseDrown(oTarget);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 4)
        {
            MMP_MephitSaltBreath(oTarget);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 4)
        {
            MMP_MephitSteamBreath(oTarget);
            return 1;
        }

    if(nHD > 4)
        if(d6() < 4)
        {
            MMP_MelfsAcidArrow(oTarget);
            return 1;
        }


    if(nHD > 3)
        if(d6() < 4)
        {
            MMP_BoltAcid(oTarget);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 4)
        {
            MMP_BoltCold(oTarget);
            return 1;
        }

    if(d6() < 4)
    {
        MMP_AcidSplash(oTarget);
        return 1;
    }
    return 0;

}

