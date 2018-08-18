// Ooze Template
#include "x0_i0_spawncond"
#include "inc_demons"


void MMP_MindBlast(object oTarget = OBJECT_INVALID)
{

    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Mind Blast");

    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_MINDBLAST,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_RayOfEnfeeblement(object oTarget = OBJECT_INVALID)
{

    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Ray of Enfeeblement");

    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELL_RAY_OF_ENFEEBLEMENT,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_GazeCharm(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_GAZE_CHARM,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraBlind(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Blinding");
    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_BLINDING,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraCold(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);
    oTarget=OBJECT_SELF;
    SendMessageToPC(oTarget,"Aura of Cold");

    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_COLD,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraElectricity(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Electricity");
    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_ELECTRICITY,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraFear(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Fear");
    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_FEAR,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraMenace(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Menace");
    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_MENACE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraProtection(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Protection");
    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_PROTECTION,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraStun(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Stun");
    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_STUN,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraUnearthlyVisage(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Unearthly Visage");

    oTarget=OBJECT_SELF;
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_AURA_UNEARTHLY_VISAGE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_AuraFire(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Aura of Fire");

    ClearAllActions(TRUE);
    oTarget=OBJECT_SELF;
    ActionCastSpellAtObject(SPELLABILITY_AURA_FIRE,oTarget,METAMAGIC_ANY,TRUE);
}



void MMP_BoltDrainCHA(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Boltdrain CHA");

    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ABILITY_DRAIN_CHARISMA,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDrainSTR(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Boltdrain STR");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ABILITY_DRAIN_STRENGTH,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDrainDEX(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"BoltdrainDEX");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ABILITY_DRAIN_DEXTERITY,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDrainWIS(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Boltdrain WIS");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ABILITY_DRAIN_WISDOM,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDrainINT(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Boltdrain INT");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ABILITY_DRAIN_INTELLIGENCE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDrainCON(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Boltdrain CON");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ABILITY_DRAIN_CONSTITUTION,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_GazeParalysis(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Gaze Parlysis");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_GAZE_PARALYSIS,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_GazeConfusion(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Gaze of Confusion");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_GAZE_CONFUSION,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_GazeDaze(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Gaze Dazing");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_GAZE_DAZE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_GazeFear(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Gaze Fear");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_GAZE_FEAR,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_GazeDomination(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Gaze Domination");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_GAZE_DOMINATE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_SonicCone(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Sonic Cone");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_CONE_SONIC,oTarget,METAMAGIC_ANY,TRUE);
}


void MMP_PulseDrainCON(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Drain CON");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_ABILITY_DRAIN_CONSTITUTION,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_PulseDrainCHA(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Drain CHA");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_ABILITY_DRAIN_CHARISMA,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_PulseDrainDEX(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Drain DEX");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_ABILITY_DRAIN_DEXTERITY,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_PulseDrainINT(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Drain CON");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_ABILITY_DRAIN_INTELLIGENCE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_PulseDrainSTR(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Drain STR");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_ABILITY_DRAIN_STRENGTH,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_PulseDrainWIS(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Drain WISE");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_ABILITY_DRAIN_WISDOM,oTarget,METAMAGIC_ANY,TRUE);
}



void MMP_PulseDeath(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Death");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_DEATH,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_PulseDisease(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Disease");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_DISEASE,oTarget,METAMAGIC_ANY,TRUE);
}


void MMP_PulsePoison(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Pulse Poison");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_PULSE_POISON,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltAcid(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Acid Bolt");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_ACID,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDisease(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Acid Bolt");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_DISEASE,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltPoison(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Acid Bolt");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_POISON,oTarget,METAMAGIC_ANY,TRUE);
}

void MMP_BoltDeath(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindStrongestEnemy(OBJECT_SELF);

    SendMessageToPC(oTarget,"Acid Bolt");
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELLABILITY_BOLT_DEATH,oTarget,METAMAGIC_ANY,TRUE);
}

void MMPABB_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    if(GetLocalInt(OBJECT_SELF,"bMindBlast"))
        if(d6() < 3)
        {
            MMP_MindBlast(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bCharmGaze"))
        if(d6() < 3)
        {
            MMP_GazeCharm(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraBlind"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_BLINDING))
        {
            MMP_AuraBlind(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraCold"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_COLD))
        {
            MMP_AuraCold(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraElectricity"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_ELECTRICITY))
        {
            MMP_AuraElectricity(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraFire"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_FIRE))
        {
            MMP_AuraFire(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraFear"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_FEAR))
        {
            MMP_AuraFear(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraMenace"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_MENACE))
        {
            MMP_AuraMenace(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bAuraProtection"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_PROTECTION))
        {
            MMP_AuraProtection(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraStun"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_STUN))
        {
            MMP_AuraStun(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bAuraUnearthlyVisage"))
        if(d6() < 3 && !GetHasSpell(SPELLABILITY_AURA_UNEARTHLY_VISAGE))
        {
            MMP_AuraUnearthlyVisage(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltCHA"))
        if(d6() < 3)
        {
            MMP_BoltDrainCHA(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bBoltINT"))
        if(d6() < 3)
        {
            MMP_BoltDrainINT(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bBoltWIS"))
        if(d6() < 3)
        {
            MMP_BoltDrainWIS(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltSTR"))
        if(d6() < 3)
        {
            MMP_BoltDrainSTR(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltDEX"))
        if(d6() < 3)
        {
            MMP_BoltDrainDEX(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltCON"))
        if(d6() < 3)
        {
            MMP_BoltDrainCON(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bSonicCone"))
        if(d6() < 3)
        {
            MMP_SonicCone(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bGazeCharm"))
        if(d6() < 3)
        {
            MMP_GazeCharm(oTarget);
            return;
        }

     if(GetLocalInt(OBJECT_SELF,"bGazeConfuse"))
        if(d6() < 3)
        {
            MMP_GazeConfusion(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeDaze"))
        if(d6() < 3)
        {
            MMP_GazeDaze(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeFear"))
        if(d6() < 3)
        {
            MMP_GazeFear(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bGazeDominate"))
        if(d6() < 3)
        {
            MMP_GazeDomination(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bRayOfEnfeeble"))
        if(d6() < 3)
        {
            MMP_RayOfEnfeeblement(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bPDCHA"))
        if(d6() < 3)
        {
            MMP_PulseDrainCHA(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDINT"))
        if(d6() < 3)
        {
            MMP_PulseDrainINT(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDWIS"))
        if(d6() < 3)
        {
            MMP_PulseDrainWIS(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDDEX"))
        if(d6() < 3)
        {
            MMP_PulseDrainDEX(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDCON"))
        if(d6() < 3)
        {
            MMP_PulseDrainCON(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPDSTR"))
        if(d6() < 3)
        {
            MMP_PulseDrainSTR(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltAcid"))
        if(d6() < 3)
        {
            MMP_BoltAcid(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltDisease"))
        if(d6() < 3)
        {
            MMP_BoltDisease(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bBoltPoison"))
        if(d6() < 3)
        {
            MMP_BoltPoison(oTarget);
            return;
        }


    if(GetLocalInt(OBJECT_SELF,"bBoltDeath"))
        if(d6() < 3)
        {
            MMP_BoltDeath(oTarget);
            return;
        }

    if(GetLocalInt(OBJECT_SELF,"bPulseDisease"))
        if(d6() < 3)
        {
            MMP_PulseDisease(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPulseDeath"))
        if(d6() < 3)
        {
            MMP_PulseDeath(oTarget);
            return;
        }
    if(GetLocalInt(OBJECT_SELF,"bPulsePoison"))
        if(d6() < 3)
        {
            MMP_PulsePoison(oTarget);
            return;
        }
}


void DEMONIC_Attack()
{
    int nDarkness = GetLocalInt(OBJECT_SELF,"nDarkness");
    int nDispel = GetLocalInt(OBJECT_SELF,"nDispel");
    int nUnholyBlight = GetLocalInt(OBJECT_SELF,"nUnholyBlight");
    int nChaosHammer = GetLocalInt(OBJECT_SELF,"nChaosHammer");
    int nBlasphemy = GetLocalInt(OBJECT_SELF,"nBlasphemy");
    int nDominate = GetLocalInt(OBJECT_SELF,"nDominate");
    int nInsanity = GetLocalInt(OBJECT_SELF,"nInsanity");
    int nPowerWord = GetLocalInt(OBJECT_SELF,"nPowerWord");

    switch(Random(13)+1)
    {
    case 1:

        if(nDarkness < GetHitDice(OBJECT_SELF))
        {
            SendMessageToPC(GetFirstPC(),"Darkness");
            SetLocalInt(OBJECT_SELF,"nDarkness",nDarkness+1);
            DEMON_CastDarkness();

        }
        break;
    case 2:
        if(nDarkness < GetHitDice(OBJECT_SELF))
        {
            SendMessageToPC(GetFirstPC(),"Dispel Magic");
            SetLocalInt(OBJECT_SELF,"nDarkness",nDispel+1);
            DEMON_DispelSpellCaster();
        }
        break;
    case 3:
        DEMON_Teleport();
        break;
    case 4:
        if(nUnholyBlight < (GetHitDice(OBJECT_SELF)/2+1))
        {
            SendMessageToPC(GetFirstPC(),"Unholy Blight");
            SetLocalInt(OBJECT_SELF,"nUnholyBlight",nUnholyBlight+1);
            DEMON_CastUnholyBlight();
        }
        break;
    case 5:
        SendMessageToPC(GetFirstPC(),"Mirror Image");
        DEMON_Blink();
        break;
    case 6:
        if(nUnholyBlight < (GetHitDice(OBJECT_SELF)/2+1))
        {
            SendMessageToPC(GetFirstPC(),"Chaos Hammer");
            SetLocalInt(OBJECT_SELF,"nChaosHammer",nChaosHammer+1);
            DEMON_CastChaosHammer();
        }
        break;
    case 7:
        if(nBlasphemy < 1)
        {
            SendMessageToPC(GetFirstPC(),"Blasphemy");
            SetLocalInt(OBJECT_SELF,"nBlasphemy",1);
            DEMON_Blasphemy();
        }
        break;
    case 8:
        SendMessageToPC(GetFirstPC(),"Charm Person");
        DEMON_CharmPerson();
        break;
    case 9:
        SendMessageToPC(GetFirstPC(),"Confusion");
        DEMON_CastConfusion();
        break;
    case 10:
        if(nDominate < GetHitDice(OBJECT_SELF)/2+1)
        {
            SendMessageToPC(GetFirstPC(),"Dominate");
            SetLocalInt(OBJECT_SELF,"nDominate",nDominate+1);
            DEMON_DominateMonster();
        }
        break;
    case 11:
        if(nInsanity < 1)
        {
            SendMessageToPC(GetFirstPC(),"Insanity");
            SetLocalInt(OBJECT_SELF,"nInsanity",1);
            DEMON_Insanity();
        }
        break;
    case 12:
        if(nPowerWord < 1)
        {
            SendMessageToPC(GetFirstPC(),"Power Word: Stun");
            SetLocalInt(OBJECT_SELF,"nPowerWord",1);
            DEMON_PowerWordStun();
        }
        break;
    case 13:
    default:
        SendMessageToPC(GetFirstPC(),"Dominate");
        DEMON_CastDispelMagic();
        break;


    }
}

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1003:
        if(GetCurrentAction() == ACTION_CASTSPELL) break;
        if(d6() < 3)
            switch(d2())
            {
            case 1: DEMONIC_Attack(); break;
            case 2: MMPABB_SpecialAttack(); break;
            }
        break;
    }
}
