void OOZE_SpecialAttack(object oTarget = OBJECT_INVALID)
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

    if(GetLocalInt(OBJECT_SELF,"bMindBlast") && nHD > 8)
        if(d6() < 4)
        {
            MMP_MindBlast(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bCharmGaze") && nHD > 7)
        if(d6() < 4)
        {
            MMP_GazeCharm(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraBlind") && nHD > 6)
        if(d6() < 4 )
        {
            MMP_AuraBlind(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraCold") && nHD > 7)
        if(d6() < 4 )
        {
            MMP_AuraCold(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraElectricity")&& nHD > 7)
        if(d6() < 4 )
        {
            MMP_AuraElectricity(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraFire") && nHD > 7)
        if(d6() < 4 )
        {
            MMP_AuraFire(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraFear")&& nHD > 7)
        if(d6() < 4 )
        {
            MMP_AuraFear(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraMenace") && nHD > 10)
        if(d6() < 4 )
        {
            MMP_AuraMenace(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bAuraProtection")&& nHD > 6)
        if(d6() < 4 )
        {
            MMP_AuraProtection(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraStun") && nHD > 6)
        if(d6() < 4 )
        {
            MMP_AuraStun(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraUnearthlyVisage")&& nHD > 20)
        if(d6() < 4 )
        {
            MMP_AuraUnearthlyVisage(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltCHA"))
        if(d6() < 4)
        {
            MMP_BoltDrainCHA(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bBoltINT"))
        if(d6() < 4)
        {
            MMP_BoltDrainINT(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bBoltWIS"))
        if(d6() < 4)
        {
            MMP_BoltDrainWIS(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltSTR"))
        if(d6() < 4)
        {
            MMP_BoltDrainSTR(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltDEX"))
        if(d6() < 4)
        {
            MMP_BoltDrainDEX(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltCON"))
        if(d6() < 4)
        {
            MMP_BoltDrainCON(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bSonicCone")&& nHD > 6)
        if(d6() < 4)
        {
            MMP_SonicCone(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bGazeCharm") && nHD > 6)
        if(d6() < 4)
        {
            MMP_GazeCharm(oTarget);
            return;
        }

     if(GetLocalInt(OBJECT_SELF,"bGazeConfuse") && nHD > 6)
        if(d6() < 4)
        {
            MMP_GazeConfusion(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeDaze") && nHD > 6)
        if(d6() < 4)
        {
            MMP_GazeDaze(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeFear") && nHD > 6)
        if(d6() < 4)
        {
            MMP_GazeFear(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeDominate")&& nHD > 12)
        if(d6() < 4)
        {
            MMP_GazeDomination(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bRayOfEnfeeble"))
        if(d6() < 4)
        {
            MMP_RayOfEnfeeblement(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bPDCHA"))
        if(d6() < 4)
        {
            MMP_PulseDrainCHA(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDINT"))
        if(d6() < 4)
        {
            MMP_PulseDrainINT(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDWIS"))
        if(d6() < 4)
        {
            MMP_PulseDrainWIS(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDDEX"))
        if(d6() < 4)
        {
            MMP_PulseDrainDEX(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDCON"))
        if(d6() < 4)
        {
            MMP_PulseDrainCON(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDSTR"))
        if(d6() < 4)
        {
            MMP_PulseDrainSTR(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltAcid"))
        if(d6() < 4)
        {
            MMP_BoltAcid(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltDisease"))
        if(d6() < 4)
        {
            MMP_BoltDisease(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltPoison"))
        if(d6() < 4)
        {
            MMP_BoltPoison(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bBoltDeath")&& nHD > 10)
        if(d6() < 4)
        {
            MMP_BoltDeath(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bPulseDisease"))
        if(d6() < 4)
        {
            MMP_PulseDisease(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPulseDeath")&& nHD > 12)
        if(d6() < 4)
        {
            MMP_PulseDeath(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPulsePoison"))
        if(d6() < 4)
        {
            MMP_PulsePoison(oTarget);
            return;
        }
}


