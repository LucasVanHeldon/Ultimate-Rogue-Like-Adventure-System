#include "inc_mmp"
#include "inc_prestigator"
#include "inc_evoker"
#include "inc_conjurer"






int FighterThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsFighter(oC))
           {
                switch(d8())
                {
                case 1: MMP_Web(oC); break;
                case 2: MMP_Darkness(oC); break;
                case 3: MMP_BlindnessDeafness(oC); break;
                case 4: MMP_Sleep(oC); break;
                case 5: MMP_Grease(oC); break;
                case 6: MMP_CharmPerson(oC); break;
                case 7: MMP_Daze(oC); break;
                case 8: MMP_Web(oC); break;
                }
                return 1;
            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}



int MageThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsMagicUser(oC) )
           {
                CONJURER_SpecialAttack(oC);
                return 1;
           }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}

void Think()
{
    if(FighterThreat())
    {
        return;
    }
    if(MageThreat())
    {
        return;
    }
    object oTarget = FindNearestEnemy(OBJECT_SELF);
    if(GetDistanceToObject(oTarget) > 6.0) CONJURER_SpecialAttack(oTarget);
    else DetermineCombatRound();
}


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");

    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1002:
        if(GetIsEnemy(GetLastPerceived()))
            DetermineCombatRound();
        break;
    case 1003:
        // if you don't check for this, it may not cast anyting.
        if(GetCurrentAction(OBJECT_SELF) != ACTION_CASTSPELL)
            Think();
        break;
     case 1011:
        if(GetLastSpellHarmful())
            if(GetIsEnemy(GetLastSpellCaster()))
                MMPC_CastLesserDispelMagic();
        break;
     default:
        break;
    }
}
