void RemoveDomination(object oC)
{
    effect eF = GetFirstEffect(oC);
    while(GetIsEffectValid(eF))
    {
        if( GetEffectType(eF) == EFFECT_TYPE_DOMINATED)
        {
            RemoveEffect(oC,eF);
        }
        eF = GetNextEffect(oC);
    }
}

void BreakEnslave(object oCreature)
{
    object oAboleth = GetLocalObject(oCreature,"oAboleth");

    if(GetHasEffect(EFFECT_TYPE_DOMINATED,oCreature))
    {
        if(GetIsObjectValid(oAboleth) && GetCurrentHitPoints(oAboleth) <= 0)
        {
            RemoveDomination(oCreature);
        }
        if(WillSave(oCreature,20))
        {
            RemoveDomination(oCreature);
        }
        DelayCommand(
            RoundsToSeconds(d3()),
            BreakEnslave(oCreature));
    }
    if(GetIsDead(oAboleth)) BreakEnslave(oCreature);
}



void ABOLETH_HypnoticPattern(object oTarget=OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DAZED);

    if(!GetIsObjectValid(oTarget))
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_SLEEP);

    // must check hitpoints in case henchmen is configured not to die but stay near dead until healed
    // or the AI will continue to try to kill it.
    if(GetIsObjectValid(oTarget) && GetCurrentHitPoints(oTarget) > 0)
    {
        ClearAllActions(TRUE);
        ActionCastSpellAtObject(SPELL_COLOR_SPRAY,oTarget,METAMAGIC_ANY,TRUE);
    }
}

void ABOLETH_Dominate(object oTarget = OBJECT_INVALID)
{

    if(!GetIsObjectValid(oTarget))
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DOMINATED);

    if(GetIsObjectValid(oTarget) && GetCurrentHitPoints(oTarget) > 0)
    {
        ClearAllActions(TRUE);
        ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,oTarget,METAMAGIC_ANY,TRUE);
    }
}

void ABOLETH_Enslave(object oTarget= OBJECT_INVALID)
{
    int nEnslave = GetLocalInt(OBJECT_SELF,"nEnslave");

    if(!GetIsObjectValid(oTarget))
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DOMINATED);

    if(GetCurrentAction() == ACTION_CASTSPELL) return;

    if(!WillSave(oTarget,19,SAVING_THROW_TYPE_MIND_SPELLS) && GetCurrentHitPoints(oTarget) > 0 )
    {
        if(!GetIsPC(oTarget))
        {
            object oMaster = GetMaster(oTarget);
            if(GetIsObjectValid(oMaster))
                RemoveHenchman(oMaster,oTarget);

            AddHenchman(OBJECT_SELF,oTarget);
        }
        else
        {
            ClearAllActions(TRUE);
            ActionCastFakeSpellAtObject(SPELLABILITY_GAZE_DOMINATE,oTarget);
            effect eDom = EffectDominated();
            eDom = SupernaturalEffect(eDom);
            eDom = ExtraordinaryEffect(eDom);
            ApplyEffectToObject(DURATION_TYPE_PERMANENT,eDom,oTarget);
            effect eVis = EffectVisualEffect(VFX_IMP_DOMINATE_S);
            ApplyEffectToObject(DURATION_TYPE_PERMANENT,eVis,oTarget);
            SetLocalInt(OBJECT_SELF,"nEnslave",nEnslave+1);
            SetLocalObject(oTarget,"oAboleth",OBJECT_SELF);
            DelayCommand(RoundsToSeconds(d4()),BreakEnslave(oTarget));
        }
    }
}

void SpecialAttack()
{
    int nEnslave = GetLocalInt(OBJECT_SELF,"nEnslave");
    switch(d3())
    {
    case 1:
        SendMessageToPC(GetFirstPC(),"Aboleth uses Hypnotic Pattern");
        ABOLETH_HypnoticPattern();
        break;
    case 2:
        SendMessageToPC(GetFirstPC(),"Aboleth uses psychic domination");
        ABOLETH_Dominate();
        break;
    case 3:
        if( nEnslave < 3)
        {
            SendMessageToPC(GetFirstPC(),"Aboleth uses Enslave");
            SetLocalInt(OBJECT_SELF,"nEnslave",nEnslave+1);
            ABOLETH_Enslave();
        }
        break;

    }
}

void SpellCast(object oTarget)
{
    int nEnslave = GetLocalInt(OBJECT_SELF,"nEnslave");

    if(!GetIsObjectValid(oTarget))
        oTarget = PickEnemy(OBJECT_SELF);

    switch(d3())
    {
    case 1:
        SendMessageToPC(GetFirstPC(),"Aboleth uses Hypnotic Pattern");
        ABOLETH_HypnoticPattern(oTarget);
        break;
    case 2:
        SendMessageToPC(GetFirstPC(),"Aboleth uses psychic domination");
        ABOLETH_Dominate(oTarget);
        break;
    case 3:
        if( nEnslave < 3)
        {
            SendMessageToPC(GetFirstPC(),"Aboleth uses Enslave");
            ABOLETH_Enslave(oTarget);
        }
        break;

    }
}

