
void GOBLIN_Summon(int n, string resref)
{
    effect eEff =  EffectVisualEffect(VFX_IMP_UNSUMMON);
    DelayCommand(0.1,ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eEff,GetLocation(OBJECT_SELF)));
    int i;
    for(i = 0; i < n; i++)
    {
        object oC = CreateObject(OBJECT_TYPE_CREATURE,resref,GetLocation(OBJECT_SELF));
    }
}
void GOBLIN_TurnInvisible(object oSelf = OBJECT_SELF)
{
    ActionCastSpellAtObject(SPELL_INVISIBILITY,oSelf,METAMAGIC_ANY,TRUE);
}



void GOBLIN_SpecialAI()
{
    object oTarget = FindNearestEnemy(OBJECT_SELF);
    float D = GetDistanceToObject(oTarget);

    switch(d3())
    {
    case 1:
        MMP_Grease(oTarget);
        break;
    case 2:
        MMP_Invisibility(OBJECT_SELF);
        break;
    case 3:
        MMP_Daze(oTarget);
        break;
    }
}


