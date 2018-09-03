#include "x0_i0_spawncond"
#include "inc_mmp"
#include "inc_goblin"

void State0()
{
    object oSeen=GetLastPerceived();
    ClearAllActions(TRUE);
    if(GetLastPerceptionSeen())
    {
        effect eEff =  EffectVisualEffect(VFX_IMP_UNSUMMON);
        DelayCommand(0.1,ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eEff,GetLocation(OBJECT_SELF)));
        SetLocalInt(OBJECT_SELF,"nCurrentState",1);
        int n = d2();
        int i;
        for(i = 0; i < n; i++)
        {
            object oC = CreateObject(OBJECT_TYPE_CREATURE,"boardire001",GetLocation(OBJECT_SELF));
        }
    }
}

void State1()
{
    int nHold = GetLocalInt(OBJECT_SELF,"nHoldPerson");
    ClearAllActions(TRUE);
    object oTarget = FindNearestEnemyWithoutEffect(
            OBJECT_SELF,
            EFFECT_TYPE_PARALYZE);
    ClearAllActions(TRUE);
    if(GetIsObjectValid(oTarget))
    {
            nHold = nHold + 1;
            SetLocalInt(OBJECT_SELF,"nHoldPerson",nHold);
            ActionCastSpellAtObject(SPELL_HOLD_PERSON,oTarget);
    }
    else
    {
        SetLocalInt(OBJECT_SELF,"nCurrentState",2);
    }
}

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    int nState = GetLocalInt(OBJECT_SELF,"nCurrentState");

    __TurnCombatRoundOn(TRUE);
    switch(nState)
    {
    case 0:
        State0();
        break;
    case 1:
        State1();
        break;
    }

    if(d6() < 3)
    {
        GOBLIN_SpecialAI();
    }
    __TurnCombatRoundOn(FALSE);
}
