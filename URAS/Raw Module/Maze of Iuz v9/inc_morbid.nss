void MMPMRBD_SpecialAttack(object oTarget = OBJECT_INVALID)
{
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
     if(GetLocalInt(OBJECT_SELF,"bPDLVL"))
        if(d6() < 4)
        {
            MMP_PulseDrainLevel(oTarget);
            return;
        }
     if(GetLocalInt(OBJECT_SELF,"bPNEG"))
        if(d6() < 4)
        {
            MMP_PulseNegative(oTarget);
            return;
        }

    //if(d6() < 4) DEMON_Blink();

}

