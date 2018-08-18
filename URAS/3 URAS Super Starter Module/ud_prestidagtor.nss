#include "inc_mmp"
#include "inc_prestigator"

int FighterThreatEngaged()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsFighter(oC) )
           {
               if(D > 3.0)
               {
                    MMP_Daze(oC);
                    return 1;
               }
               else if(D > 0.0)
               {
                    effect eF = EffectFrightened();
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eF,OBJECT_SELF,4.0);
                    return 1;
                }
            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}



int MageThreatEngaged()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsMagicUser(oC) )
           {
                PRESTIGATOR_SpecialDmg(oC);
                return 1;
           }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,25.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}

void Think()
{

    if(FighterThreatEngaged()) return;
    if(MageThreatEngaged())return;

    object oE = PickEnemy(OBJECT_SELF);
    float D=GetDistanceToObject(oE);
    if(D >0.0 && D < 25.0 && d6() < 3)
        PRESTIGATOR_SpecialAttack();
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
        if(GetCurrentAction(OBJECT_SELF) != ACTION_CASTSPELL)
            Think();
        break;
    case 1011:
    default:
        break;
    }
}
