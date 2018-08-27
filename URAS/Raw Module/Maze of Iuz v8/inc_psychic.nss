void PSYCHIC_MindBlast()
{
    int nHD = GetHitDice(OBJECT_SELF);
    object oC = GetFirstObjectInShape(SHAPE_CONE,15.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && GetCurrentHitPoints(oC) > 0)
        {
            if(!WillSave(oC,10+nHD+GetAbilityModifier(ABILITY_INTELLIGENCE)))
            {
                effect eDom = EffectDominated();
                effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_DOMINATED);
                // one of these links causes the stack on the script interpreter to go bugged.
                //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,eDom),oC,RoundsToSeconds(d6()));
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eDom,oC,RoundsToSeconds(d6()));
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
            }
        }
        oC = GetNextObjectInShape(SHAPE_CONE,15.0,GetLocation(OBJECT_SELF));
    }
}

void PSYCHIC_MindCrush(object oTarget = OBJECT_INVALID)
{
    int nHD = GetHitDice(OBJECT_SELF);
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));

    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && GetCurrentHitPoints(oC) > 0)
        {
            if(!WillSave(oC,10+nHD+GetAbilityModifier(ABILITY_INTELLIGENCE)))
            {
                effect eDom = EffectDominated();
                effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_DOMINATED);
                //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,eDom),oC,RoundsToSeconds(d6(2)));
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eDom,oC,RoundsToSeconds(d6()));
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

            }
        }
        oC = GetNextObjectInShape(SHAPE_CONE,15.0,GetLocation(OBJECT_SELF));
    }
}

void PSYCHIC_Strength()
{
    int nAmt = d4();
    object oC = OBJECT_SELF;
    effect ePwr = EffectAbilityIncrease(ABILITY_STRENGTH,nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_Dexterity()
{
    int nAmt = d4();
    object oC = OBJECT_SELF;
    effect ePwr = EffectAbilityIncrease(ABILITY_DEXTERITY,nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_DOMINATED);
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));


}

void PSYCHIC_Constitution()
{
    int nAmt = d4();
    object oC = OBJECT_SELF;
    effect ePwr = EffectAbilityIncrease(ABILITY_CONSTITUTION,nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_Will()
{
    int nAmt = d4();
    object oC = OBJECT_SELF;

    effect ePwr  = EffectAbilityIncrease(ABILITY_WISDOM,nAmt);
    effect ePwr2 = EffectAbilityIncrease(ABILITY_INTELLIGENCE,nAmt);
    effect ePwr3 = EffectAbilityIncrease(ABILITY_CHARISMA,nAmt);

    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr2,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr3,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_Vulnerability(object oTarget = OBJECT_INVALID)
{
    object oC = OBJECT_SELF;
    int nAmt = d4();
    int nHD = GetHitDice(OBJECT_SELF);
    if(!GetIsObjectValid(oTarget)) oTarget = FindStrongestEnemy(OBJECT_SELF);

    effect ePwr = EffectACDecrease(nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_WISDOM)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
        //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));


    }
}


void PSYCHIC_MindOverBody()
{
    object oC = OBJECT_SELF;
    int nAmt    = d4();
    effect ePwr = EffectACIncrease(nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur    = d4()+GetAbilityModifier(ABILITY_CHARISMA);

    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_MindOverMatter()
{
    object oC = OBJECT_SELF;
    int nAmt = d4();
    effect ePwr = EffectDamageImmunityIncrease(DAMAGE_TYPE_BLUDGEONING,10);
    effect ePwr2 = EffectDamageImmunityIncrease(DAMAGE_TYPE_SLASHING,10);
    effect ePwr3 = EffectDamageImmunityIncrease(DAMAGE_TYPE_PIERCING,10);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_INTELLIGENCE);
    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr2,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr3,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_MindOverReality()
{
    object oC = OBJECT_SELF;
    int nAmt     = d4();
    effect ePwr  = EffectDamageImmunityIncrease(DAMAGE_TYPE_ACID,10);
    effect ePwr1 = EffectDamageImmunityIncrease(DAMAGE_TYPE_FIRE,10);
    effect ePwr2 = EffectDamageImmunityIncrease(DAMAGE_TYPE_COLD,10);
    effect ePwr3 = EffectDamageImmunityIncrease(DAMAGE_TYPE_SONIC,10);
    effect ePwr4 = EffectDamageImmunityIncrease(DAMAGE_TYPE_ELECTRICAL,10);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_INTELLIGENCE);
//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr1,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr2,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr3,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_ReducePower(object oTarget = OBJECT_INVALID)
{
    int nAmt = d4();
    object oC = OBJECT_SELF;
    int nHD = GetHitDice(OBJECT_SELF);
    if(!GetIsObjectValid(oTarget)) oTarget = FindStrongestEnemy(OBJECT_SELF);

    effect ePwr = EffectAttackDecrease(nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_WISDOM)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));

    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

    }
}



void PSYCHIC_IncreasePower()
{
    object oC = OBJECT_SELF;
    int nAmt = d4();
    effect ePwr = EffectAttackIncrease(nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);

    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
}


void PSYCHIC_Paralysis(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_PARALYZE);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);


    effect ePwr = EffectParalyze();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Charm(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_CHARMED);
    }
    int nHD = GetHitDice(OBJECT_SELF);
    object oC = oTarget;

    effect ePwr = EffectCharmed();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    eVis = EffectLinkEffects(eVis2,eVis);

    if(!WillSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Concealment()
{
    object oC = OBJECT_SELF;
    effect ePwr = EffectConcealment(50+10*GetAbilityModifier(ABILITY_INTELLIGENCE));
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    int nDur = d4()+GetAbilityModifier(ABILITY_INTELLIGENCE);

//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PYSCHIC_Enervation(object oTarget)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DOMINATED);
    }

    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    effect ePwr = EffectDeath();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);

    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectLinkEffects(eVis,ePwr),OBJECT_SELF);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Confusion(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_CONFUSED);
    }
    int nHD = GetHitDice(OBJECT_SELF);
    object oC = oTarget;

    effect ePwr = EffectConfused();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    if(!WillSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_WISDOM)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));
    }
}

void PSYCHIC_Cripple(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindStrongestEnemy(OBJECT_SELF);
    }

    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);


    effect ePwr = EffectCurse(d4(),d4(),d4(),d4(),d4(),d4());
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    if(!WillSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_WISDOM)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_EgoWhip(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_CONFUSED);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectDamage(d6(nAmt));
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Shield()
{
    object oC = OBJECT_SELF;
    int nAmt = d4();
    effect ePwr = EffectDamageShield(d4()+GetAbilityModifier(ABILITY_INTELLIGENCE),d4()+GetAbilityModifier(ABILITY_CHARISMA),DAMAGE_TYPE_SONIC);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);

    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
}


void PSYCHIC_Daze(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_CONFUSED);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectDazed();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );

    if(!WillSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Deafness(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DEAF);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectDeaf();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Contagion(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DISEASE);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectDisease(d20());
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}


void PSYCHIC_Adhesive(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_ENTANGLE);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectEntangle();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}


void PSYCHIC_Frighten(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_FRIGHTENED);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectFrightened();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}


void PSYCHIC_Haste()
{
    object oC = OBJECT_SELF;
    effect ePwr = EffectHaste();
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}


void PSYCHIC_Speed()
{
    object oC = OBJECT_SELF;
    effect ePwr = EffectMovementSpeedIncrease(10);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}

void PSYCHIC_Entomb(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_PETRIFY);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectPetrify();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
//        ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectLinkEffects(eVis,ePwr),OBJECT_SELF);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,oC,RoundsToSeconds(d6()));

    }
}

void PSYCHIC_Enervation(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {

        oTarget = FindNearestEnemy(OBJECT_SELF);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;
    effect ePwr = EffectDeath();
    effect eVis = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        //ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectLinkEffects(eVis,ePwr),OBJECT_SELF);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

    }
}


void PSYCHIC_Regeneration()
{
    object oC = OBJECT_SELF;
    int nAmt    = GetAbilityModifier(ABILITY_INTELLIGENCE)+1;
    effect ePwr = EffectRegenerate(nAmt,1.0);

    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur    = d4()+GetAbilityModifier(ABILITY_CHARISMA);

    //ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}


void PSYCHIC_BeatTheOdds()
{
    object oC = OBJECT_SELF;
    int nAmt    = GetAbilityModifier(ABILITY_INTELLIGENCE)+1;
    effect ePwr = EffectSavingThrowIncrease(SAVING_THROW_ALL,nAmt);
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur    = d4()+GetAbilityModifier(ABILITY_CHARISMA);

//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}


void PSYCHIC_DetectInvisibility()
{
    object oC = OBJECT_SELF;
    int nAmt    = GetAbilityModifier(ABILITY_INTELLIGENCE)+1;
    effect ePwr = EffectSeeInvisible();
    effect eVis = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );
    int nDur    = d4()+GetAbilityModifier(ABILITY_CHARISMA);

//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,EffectLinkEffects(eVis,ePwr),OBJECT_SELF,RoundsToSeconds(nDur));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,oC,RoundsToSeconds(d6()));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,oC,RoundsToSeconds(d6()));

}


void PSYCHIC_Silence(object oTarget = OBJECT_INVALID)
{
    if(!GetIsObjectValid(oTarget))
    {
        oTarget = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_SILENCE);
    }
    object oC = oTarget;
    int nHD = GetHitDice(OBJECT_SELF);
    int nAmt = nHD;
    if(nAmt > 10) nAmt = 10;

    effect ePwr  = EffectSilence();
    effect eVis  = EffectBeam(VFX_BEAM_ODD,OBJECT_SELF,BODY_NODE_CHEST);
    effect eVis2 = EffectVisualEffect(VFX_DUR_MIND_AFFECTING_POSITIVE );


    if(!FortitudeSave(oTarget,10+nHD+GetAbilityModifier(ABILITY_CHARISMA)))
    {
        int nDur = d4()+GetAbilityModifier(ABILITY_CHARISMA);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,ePwr,OBJECT_SELF,RoundsToSeconds(nDur));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis,OBJECT_SELF,RoundsToSeconds(nDur));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eVis2,OBJECT_SELF,RoundsToSeconds(nDur));
    }
}


int PSYCHIC_SpecialAttack(int nPoints)
{
    if(nPoints > 6 && GetCurrentHitPoints(OBJECT_SELF) < 20)
    {
        PSYCHIC_Regeneration();
        return 7;
    }

    if(nPoints > 0 && d6() < 3)
    {
        PSYCHIC_Haste();
        return 1;
    }
     if(nPoints > 0 && d6() < 3)
    {
        PSYCHIC_Speed();
        return 1;
    }

   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_Will();
        return 5;
    }
   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_MindOverMatter();
        return 5;
    }
   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_MindOverReality();
        return 5;
    }
  if(nPoints > 1 && d6() < 3)
   {
        PSYCHIC_MindOverBody();
        return 5;
   }
    if(nPoints > 3 && d6() < 3)
    {
        PSYCHIC_MindBlast();
        return 2;
    }

   if(nPoints > 1 && d6() < 3)
   {
        PSYCHIC_BeatTheOdds();
        return 3;
   }

   if(nPoints > 15 && d6() < 3)
    {
        PSYCHIC_Enervation();
        return 10;
    }

   if(nPoints > 10 && d6() < 3)
    {
        PSYCHIC_Entomb();
        return 8;
    }

    if(nPoints > 7 && d6() < 3)
    {
        PSYCHIC_MindCrush();
        return 10;
    }
    if(nPoints > 7 && d6() < 3)
    {
        PSYCHIC_EgoWhip();
        return 9;
    }

   if(nPoints > 3 && d6() < 3)
    {
        PSYCHIC_Shield();
        return 7;
    }

   if(nPoints > 2 && d6() < 3)
    {
        PSYCHIC_Cripple();
        return 7;
    }

   if(nPoints > 2 && d6() < 3)
    {
        PSYCHIC_Contagion();
        return 7;
    }

   if(nPoints > 3 && d6() < 3)
    {
        PSYCHIC_Confusion();
        return 7;
    }

   if(nPoints > 2 && d6() < 3)
    {
        PSYCHIC_Concealment();
        return 6;
    }

   if(nPoints > 3 && d6() < 3)
    {
        PSYCHIC_Paralysis();
        return 6;
    }

   if(nPoints > 2 && d6() < 3)
    {
        PSYCHIC_Deafness();
        return 5;
    }

   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_Adhesive();
        return 5;
    }

   if(nPoints > 1 && d6() < 3)
   {
        PSYCHIC_Silence();
        return 4;
   }

   if(nPoints > 2 && d6() < 3)
   {
        PSYCHIC_Vulnerability();
        return 3;
   }

   if(nPoints > 2 && d6() < 3)
   {
        PSYCHIC_ReducePower();
        return 3;
   }

   if(nPoints > 2 && d6() < 3)
   {
        PSYCHIC_IncreasePower();
        return 3;
   }

   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_Strength();
        return 2;
    }
   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_Dexterity();
        return 2;
    }
   if(nPoints > 1 && d6() < 3)
    {
        PSYCHIC_Constitution();
        return 2;
    }
    if(nPoints > 0 && d6() < 3)
    {
        PSYCHIC_Charm();
        return 1;
    }
    if(nPoints > 0 && d6() < 3)
    {
        PSYCHIC_Daze();
        return 1;
    }
    if(nPoints > 0 && d6() < 3)
    {
        PSYCHIC_DetectInvisibility();
        return 1;
    }

    return 0;
}




