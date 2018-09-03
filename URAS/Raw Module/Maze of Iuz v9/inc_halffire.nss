int FIRE_SpecialAttack(object oTarget = OBJECT_INVALID)
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
            MMP_FireStorm(oTarget);
            return 1;
        }

    if(nHD > 15)
        if(d6() < 4)
        {
            MMP_DelayedBlastFireball(oTarget);
            return 1;
        }
    if(nHD > 15)
        if(d6() < 4)
        {
            MMP_IncendiaryCloud(oTarget);
            return 1;
        }

    if(nHD > 11)
        if(d6() < 4)
        {
            MMP_WallOfFire(oTarget);
            return 1;
        }

    if(nHD > 11)
        if(d6() < 4)
        {
            MMP_Flamestrike(oTarget);
            return 1;
        }

    if(nHD > 9)
        if(d6() < 4)
        {
            MMP_Inferno(oTarget);
            return 1;
        }

    if(nHD > 8)
        if(d6() < 4)
        {
            MMP_Firebrand(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_Fireball(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_PulseFire(oTarget);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 4)
        {
            MMP_ConeOfFire(oTarget);
            return 1;
        }

    if(nHD > 4)
        if(d6() < 4)
        {
            MMP_AuraFire(OBJECT_SELF);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 4)
        {
            MMP_BoltFire(oTarget);
            return 1;
        }

    if(d6() < 4)
    {
        MMP_Combust(oTarget);
        return 1;
    }

    if(d6() < 4)
    {
        MMP_BurningHands(oTarget);
        return 1;
    }

    return 0;

}


