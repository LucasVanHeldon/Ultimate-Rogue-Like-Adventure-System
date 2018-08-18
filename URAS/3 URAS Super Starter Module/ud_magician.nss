#include "inc_mmp"
#include "inc_prestigator"
#include "inc_evoker"
#include "inc_conjurer"
#include "inc_theurgist"


void MAGICIAN_SpecialAttack(object oTarget = OBJECT_INVALID)
{
    switch(d8(2))
    {
    case 1: MMP_BestowCurse(oTarget); break;
    case 2: MMP_CharmMonster(oTarget); break;
    case 3: MMP_Confusion(oTarget); break;
    case 4: MMP_Contagion(oTarget); break;
    case 5: MMP_Enervation(oTarget); break;
    case 6: MMP_EvardsBlackTentacles(oTarget); break;
    case 7: MMP_Fear(oTarget); break;
    case 8: MMP_IceStorm(oTarget); break;
    case 9: MMP_IsaacsLesserMissileStorm(oTarget); break;
    case 10: MMP_PhantasmalKiller(oTarget); break;
    case 11: MMP_WallOfFire(oTarget); break;
    default: THEURGIST_SpecialAttack(oTarget); break;
    }
}

int FighterThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,45.0,GetLocation(OBJECT_SELF));
    SendMessageToPC(GetFirstPC(),"Fighter Threat");

    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && ( IsFighter(oC) || (D > 3.0 && D < 6.0)))
           {
               if(D > 3.0)
               {
                    switch(d20())
                    {
                    case 2: MMP_Slow(oC); break;
                    case 3: MMP_HoldPerson(oC); break;
                    case 4: MMP_StinkingCloud(oC); break;
                    case 5: MMP_Web(oC); break;
                    case 6: MMP_Darkness(oC); break;
                    case 7: MMP_BlindnessDeafness(oC); break;
                    case 8: MMP_Sleep(oC); break;
                    case 9: MMP_Grease(oC); break;
                    case 10: MMP_CharmPerson(oC); break;
                    case 11: MMP_Daze(oC); break;;
                    case 12: MMP_Fear(oC); break;
                    case 13: MMP_CharmMonster(oC); break;
                    case 14: MMP_Confusion(oC); break;
                    case 15: MMP_PhantasmalKiller(oC); break;
                    case 16: MMP_WallOfFire(oC); break;
                    default: MAGICIAN_SpecialAttack(oC); break;
                    }
                    return 1;
               }
               else if(D > 0.0 )
               {
                    switch(d20())
                    {
                    case 1: MMP_HoldPerson(oC); break;
                    case 2: MMP_VampiricTouch(oC); break;
                    case 3: MMP_Darkness(oC); break;
                    case 4: MMP_BlindnessDeafness(oC); break;
                    case 5: MMP_Sleep(oC); break;
                    case 6: MMP_Grease(oC); break;
                    case 7: MMP_CharmPerson(oC); break;
                    case 8: MMP_Daze(oC); break;;
                    case 9: MMP_Fear(oC); break;
                    case 10: MMP_Confusion(oC); break;
                    case 11: MMP_PhantasmalKiller(oC); break;
                    case 12: MMP_WallOfFire(oC); break;
                    default: MAGICIAN_SpecialAttack(oC); break;
                    }
                    return 1;
                }

            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,45.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}



int MageThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,45.0,GetLocation(OBJECT_SELF));
    SendMessageToPC(GetFirstPC(),"Mage Threat");
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsMagicUser(oC) )
           {
                MAGICIAN_SpecialAttack(oC);
                return 1;
           }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,45.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}

int ClericThreat()
{

    object oC = GetFirstObjectInShape(SHAPE_SPHERE,45.0,GetLocation(OBJECT_SELF));
    SendMessageToPC(GetFirstPC(),"Cleric Threat");
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && IsCleric(oC) || (IsActive(oC) && (D > 3.0 && D < 6.0)))
           {
               if(D > 3.0)
               {
                    switch(d20())
                    {
                    case 1: MMP_Slow(oC); break;
                    case 2: MMP_HoldPerson(oC); break;
                    case 3: MMP_StinkingCloud(oC); break;
                    case 4: MMP_Web(oC); break;
                    case 5: MMP_Darkness(oC); break;
                    case 6: MMP_BlindnessDeafness(oC); break;
                    case 7: MMP_Sleep(oC); break;
                    case 8: MMP_Grease(oC); break;
                    case 9: MMP_CharmPerson(oC); break;
                    case 10: MMP_Daze(oC); break;;
                    case 11: MMP_Fear(oC); break;
                    case 12: MMP_Confusion(oC); break;
                    case 13: MMP_PhantasmalKiller(oC); break;
                    case 14: MMP_WallOfFire(oC); break;
                    case 15: MMP_CharmMonster(oC); break;
                    default: MAGICIAN_SpecialAttack(oC);
                    }
                    return 1;
               }
               else if(D > 0.0 )
               {
                    switch(d10())
                    {
                    case 1: MMP_HoldPerson(oC); break;
                    case 2: MMP_VampiricTouch(oC); break;
                    case 3: MMP_Darkness(oC); break;
                    case 4: MMP_BlindnessDeafness(oC); break;
                    case 5: MMP_Sleep(oC); break;
                    case 6: MMP_Grease(oC); break;
                    case 7: MMP_CharmPerson(oC); break;
                    case 8: MMP_Daze(oC); break;;
                    default: MAGICIAN_SpecialAttack(oC); break;
                    }
                    return 1;
                }
            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,45.0,GetLocation(OBJECT_SELF));
    }
    return 0;
}

int OtherThreat()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,50.0,GetLocation(OBJECT_SELF));
    SendMessageToPC(GetFirstPC(),"Other Threats");
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && !IsEnemyDead(oC))
        {
           float D = GetDistanceToObject(oC);

           if(IsActive(oC) && (D > 3.0 && D < 6.0))
           {
               if(D > 3.0)
               {
                    switch(d20())
                    {
                    case 1: MMP_Slow(oC); break;
                    case 2: MMP_HoldPerson(oC); break;
                    case 3: MMP_StinkingCloud(oC); break;
                    case 4: MMP_Web(oC); break;
                    case 5: MMP_Darkness(oC); break;
                    case 6: MMP_BlindnessDeafness(oC); break;
                    case 7: MMP_Sleep(oC); break;
                    case 8: MMP_Grease(oC); break;
                    case 9: MMP_CharmPerson(oC); break;
                    case 10: MMP_Daze(oC); break;;
                    case 11: MMP_Fear(oC); break;
                    case 12: MMP_Confusion(oC); break;
                    case 13: MMP_PhantasmalKiller(oC); break;
                    case 14: MMP_WallOfFire(oC); break;
                    case 15: MMP_CharmMonster(oC); break;
                    default: MAGICIAN_SpecialAttack(oC);
                    }
                    return 1;
               }
               else if(D > 0.0 && !GetHasEffect(EFFECT_TYPE_FRIGHTENED))
               {
                    switch(d20())
                    {
                    case 1: MMP_Slow(oC); break;
                    case 2: MMP_HoldPerson(oC); break;
                    case 3: MMP_StinkingCloud(oC); break;
                    case 4: MMP_Web(oC); break;
                    case 5: MMP_Darkness(oC); break;
                    case 6: MMP_BlindnessDeafness(oC); break;
                    case 7: MMP_Sleep(oC); break;
                    case 8: MMP_Grease(oC); break;
                    case 9: MMP_CharmPerson(oC); break;
                    case 10: MMP_Daze(oC); break;;
                    case 11: MMP_Fear(oC); break;
                    case 12: MMP_Confusion(oC); break;
                    case 13: MMP_PhantasmalKiller(oC); break;
                    case 14: MMP_WallOfFire(oC); break;
                    case 15: MMP_CharmMonster(oC); break;
                    default: MAGICIAN_SpecialAttack(oC);
                    }
                    return 1;
                }
            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,50.0,GetLocation(OBJECT_SELF));
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
    if(ClericThreat())
    {
        return;
    }
    if(OtherThreat())
    {
        return;
    }
    object oTarget = FindNearestEnemy(OBJECT_SELF);
    if(GetDistanceToObject(oTarget) > 6.0) MAGICIAN_SpecialAttack(oTarget);
    else DetermineCombatRound();
}


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    int nPowers = GetLocalInt(OBJECT_SELF,"nPowers");
    object oSC = GetLastSpellCaster();

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
            if(GetIsEnemy(oSC))
            switch(d2())
            {
            case 1: MMPC_CastLesserSpellBreach(); break;
            case 2: MMPC_CastLesserDispelMagic(); break;
            }
        break;
    }
}
