int EARTH_SpecialAttack(object oTarget = OBJECT_INVALID)
{

    int nHD = GetHitDice(OBJECT_SELF);



    if(nHD > 7)
        if(d6() < 3)
        {
            ActionCastSpellAtObject(SPELL_STONESKIN,OBJECT_SELF,METAMAGIC_ANY,TRUE);
            return 1;
        }

    if(nHD > 15)
        if(d6() < 3)
        {
            ActionCastSpellAtObject(SPELL_GREATER_STONESKIN,OBJECT_SELF,METAMAGIC_ANY,TRUE);
            return 1;
        }
    if(nHD > 12)
        if(d6() < 3)
        {
            MMP_Bombardment(oTarget);
            return 1;
        }

    if(nHD > 10)
        if(d6() < 3)
        {
            MMP_Earthquake(oTarget);
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
            MMP_BreathPetrify(oTarget);
            return 1;
        }
    if(nHD > 9)
        if(d6() < 3)
        {
            MMP_GazePetrify(oTarget);
            return 1;
        }
    if(nHD > 8)
        if(d6() < 3)
        {
            MMP_NatureBalance(oTarget);
            return 1;
        }
    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_Slow(oTarget);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_FleshToStone(oTarget);
            return 1;
        }

    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_TouchPetrify(oTarget);
            return 1;
        }
    if(nHD > 3)
        if(d6() < 3)
        {
            MMP_BoltKnockdown(oTarget);
            return 1;
        }
     if(nHD > 3)
        if(d6() < 3)
        {
            MMP_ElementalShield(OBJECT_SELF);
            return 1;
        }
    if(d6() < 3)
        {
            MMP_BoltStun(oTarget);
            return 1;
        }

    return 0;

}



