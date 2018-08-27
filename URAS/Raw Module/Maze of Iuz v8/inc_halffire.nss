int FIRE_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    int nHD = GetHitDice(OBJECT_SELF);

    if(nHD > 20)
        if(d6() < 3)
        {
            MMP_FireStorm(OBJECT_SELF);
            return 1;
        }

    if(nHD > 15)
        if(d6() < 3)
        {
            MMP_DelayedBlastFireball(OBJECT_SELF);
            return 1;
        }
    if(nHD > 15)
        if(d6() < 3)
        {
            MMP_IncendiaryCloud(OBJECT_SELF);
            return 1;
        }

    if(nHD > 11)
        if(d6() < 3)
        {
            MMP_WallOfFire(OBJECT_SELF);
            return 1;
        }

    if(nHD > 11)
        if(d6() < 3)
        {
            MMP_Flamestrike(OBJECT_SELF);
            return 1;
        }

    if(nHD > 9)
        if(d6() < 3)
        {
            MMP_Inferno(OBJECT_SELF);
            return 1;
        }

    if(nHD > 8)
        if(d6() < 3)
        {
            MMP_Firebrand(OBJECT_SELF);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 3)
        {
            MMP_Fireball(OBJECT_SELF);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 3)
        {
            MMP_PulseFire(OBJECT_SELF);
            return 1;
        }

    if(nHD > 7)
        if(d6() < 3)
        {
            MMP_ConeOfFire(OBJECT_SELF);
            return 1;
        }

    if(nHD > 4)
        if(d6() < 3)
        {
            MMP_AuraFire(OBJECT_SELF);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_BoltFire(oTarget);
            return 1;
        }

    if(d6() < 3)
    {
        MMP_Combust(oTarget);
        return 1;
    }

    if(d6() < 3)
    {
        MMP_BurningHands(oTarget);
        return 1;
    }

    return 0;

}


