
#include "x0_i0_spawncond"
#include "inc_ai"
#include "inc_blink"

void TeleportAttack(object oSelf=OBJECT_SELF)
{
    object oTarget = PickEnemy(oSelf);
    if(GetDistanceToObject(oTarget) > 3.0)
    {
        if(d6() < 4)
        {
           object oTarget2 = FindStrongestEnemy(oSelf);
           if(GetIsObjectValid(oTarget2)) oTarget = oTarget2;
        }
        if(GetIsObjectValid(oTarget))
        {
            ClearAllActions(TRUE);
            AssignCommand(oSelf,JumpToLocation(GetLocation(oTarget)));
            DelayCommand(0.1,AssignCommand(oSelf,DetermineCombatRound()));
        }
    }
}

void TurnInvisible(object oSelf = OBJECT_SELF)
{
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(SPELL_INVISIBILITY,oSelf,METAMAGIC_ANY,TRUE);
}

void Special()
{
    object oTarget = FindNearestEnemy(OBJECT_SELF);
    float D = GetDistanceToObject(oTarget);

    switch(d2())
    {
    case 1:
        ClearAllActions(TRUE);
        ActionCastSpellAtObject(SPELL_GREASE,oTarget,METAMAGIC_ANY,TRUE);
        break;
    case 2:
        DEMON_Blink();
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
     {
        if(d6() == 1)
        {
            Special();
        }
     }

    }
}
