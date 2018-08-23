// These are functions which can be used to extend the AI with
// custom behavior.

#include "nw_i0_generic"
#include "x0_i0_enemy"


// this is done because some have rules that you are not compleltely dead at 0
// but dying, and generally that is the behavior of henchmen.
// GetIsDead() doesn't work with henchmen in general.
// replace this number with -10 or whatever if you have rules about
// bleeding, or give time to heal before dying.
int IsEnemyDead(object oEnemy)
{
    return(GetCurrentHitPoints(oEnemy) <= 0);
}

string WeaponInHandTag()
{
    return GetTag(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND));
}

int GetObjectNeedsHealing(object oMostDamagedMember, int nPercent)
{
    int nResult = FALSE;
    nPercent = nPercent / 100;
    int nDamagedAmount = GetMaxHitPoints(oMostDamagedMember) * nPercent;
    if(GetCurrentHitPoints(oMostDamagedMember) < nDamagedAmount)
        nResult = TRUE;
    return nResult;
}

int IsBadlyWounded(object oC)
{
    int iHP = GetMaxHitPoints(oC)/4;

    return(  GetCurrentHitPoints(oC) <= iHP);
}

int IsRanged(object oC)
{
    return ( GetWeaponRanged(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND,oC)));
}

// these are the only behaviors built into the game.
// they are only used by the game AI.
void ClearCombatFlags()
{
    SetCombatCondition(X0_COMBAT_FLAG_COWARDLY,FALSE,OBJECT_SELF);
    SetCombatCondition(X0_COMBAT_FLAG_RANGED,FALSE,OBJECT_SELF);
    SetCombatCondition(X0_COMBAT_FLAG_DEFENSIVE,FALSE,OBJECT_SELF);
    SetCombatCondition(X0_COMBAT_FLAG_AMBUSHER,FALSE,OBJECT_SELF);
}

void SetDefensive(int bVal=TRUE)
{
    SetCombatCondition(X0_COMBAT_FLAG_DEFENSIVE,bVal,OBJECT_SELF);
}

void SetRanged(int bVal=TRUE)
{
    SetCombatCondition(X0_COMBAT_FLAG_RANGED,bVal,OBJECT_SELF);
}

void SetCowardly(int bVal=TRUE)
{
    SetCombatCondition(X0_COMBAT_FLAG_COWARDLY,bVal,OBJECT_SELF);
}

void SetAmbusher(int bVal=TRUE)
{
    SetCombatCondition(X0_COMBAT_FLAG_AMBUSHER,bVal,OBJECT_SELF);
}

// makes the object flee (cowardly)
void RunAway(object oPercep)
{
    ClearCombatFlags();
    SetCombatCondition(X0_COMBAT_FLAG_COWARDLY,TRUE,OBJECT_SELF);
    DetermineCombatRound();
}

int IsMindless(object oC)
{
    int i;
    // anything with an int < 6 is considered mindless
    if(GetAbilityScore(oC, ABILITY_INTELLIGENCE)  == 3) return TRUE;
    return FALSE;
}


// used by evil to find weak opponents to coup de grace
int IsVulnerable(object oObject)
{
    if( GetHasEffect(EFFECT_TYPE_PARALYZE,oObject) ||
        GetHasEffect(EFFECT_TYPE_SLEEP,oObject) )
            return TRUE;
    return FALSE;
}

// this generall works ok
int CanSeeObject(object oObject)
{
    return GetObjectSeen(oObject) && LineOfSightObject(OBJECT_SELF,oObject);
}


///////////////////////////////////////////////////////////////
// Inventory and helpers
///////////////////////////////////////////////////////////////
object SearchInventory(object oObject, string tag)
{
    object oItem = GetFirstItemInInventory(oObject);
    while(GetIsObjectValid(oItem))
    {
        if(GetTag(oItem)==tag) return oItem;
        oItem = GetNextItemInInventory(oObject);
    }
    return OBJECT_INVALID;
}







///////////////////////////////////////////////////////////////
// Movement (incomplete/not tested)
///////////////////////////////////////////////////////////////

void MoveFromObject(object oPercep, int dist=10, int run=TRUE)
{
    vector vec;
    location loc = GetLocation(oPercep);
    vec = GetPositionFromLocation(loc);
    float face = IntToFloat(Random(360));
    float n = 1.0;
    if(Random(2)==1) n=-1.0f;
    vec = GetChangedPosition(vec,n*IntToFloat(Random(dist)),face);
    ActionMoveToLocation(Location(GetArea(OBJECT_SELF),vec,face),run);
}


// move somewhere behind the object
void MoveBehindObject(object oPercep,int run=TRUE)
{
    location loc = GetBehindLocation(oPercep);
    ActionMoveToLocation(loc,run);
}

void FlankLeftOfObject(object oPercep, int run=TRUE)
{
    location loc = GetFlankingLeftLocation(oPercep);
    ActionMoveToLocation(loc,run);
}

void FlankRightOfObject(object oPercep, int run=TRUE)
{
    location loc = GetFlankingRightLocation(oPercep);
    ActionMoveToLocation(loc,run);
}




/////////////////////////////////////////////////////////////////
// Search for (Object)
/////////////////////////////////////////////////////////////////

object FindNearestEnemy(object oSelf);

object FindNearestWoundedAlly(object oSelf=OBJECT_SELF, int iAmt=25)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,15.0,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( !GetIsEnemy(oNear) && CanSeeObject(oNear)&& GetObjectNeedsHealing(oNear,iAmt)) return oNear;

        oNear = GetNextObjectInShape(SHAPE_SPHERE,15.0,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}


object FindNearestAllyWithEffect(int iEffect, object oSelf=OBJECT_SELF)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,15.0,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if(   !GetIsEnemy(oNear) && CanSeeObject(oNear) && GetHasEffect(iEffect,oNear)) return oNear;
        oNear = GetNextObjectInShape(SHAPE_SPHERE,15.0,GetLocation(oSelf));
    }
    return OBJECT_INVALID;

}

object FindNearestAllyWithoutEffect(object oSelf, int iEffect, float fSize=30.0f)
{
   object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if(   !GetIsEnemy(oNear) && CanSeeObject(oNear) && GetHasEffect(iEffect,oNear)) return oNear;
        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;

}

// this doesn't always work correctly (GetHasSpellEffect)
object FindNearestAllyWithoutSpellEffect(object oSelf, int iSpellEffect, float fSize=30.0f)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( !GetIsEnemy(oNear) && CanSeeObject(oNear) && !GetHasSpellEffect(iSpellEffect,oNear)) return oNear;
        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}

// technically does not need to be self, will change maybe
object FindNearestAlly(object oSelf=OBJECT_SELF)
{
    return GetNearestCreature(CREATURE_TYPE_REPUTATION,REPUTATION_TYPE_FRIEND);
}

object FindWeakestEnemy(object oSelf=OBJECT_SELF)
{
    object oEnemy = FindNearestEnemy(oSelf);
    return GetFactionMostDamagedMember(oEnemy);
}

object FindWeakestAlly(object oSelf=OBJECT_SELF)
{
    object oAlly = FindNearestAlly(oSelf);
    return GetFactionMostDamagedMember(oAlly);
}

object FindStrongestEnemy(object oSelf=OBJECT_SELF)
{
    object oEnemy = FindNearestEnemy(oSelf);
    return GetFactionStrongestMember(oEnemy);
}

object FindStrongestAlly(object oSelf=OBJECT_SELF)
{
    object oAlly = FindNearestAlly(oSelf);
    return GetFactionStrongestMember(oAlly);
}


// use a sphere test, it is faster.
object FindNearestEnemyWithoutEffect(object oSelf, int iEffect, float fSize=30.0f)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( GetIsEnemy(oNear) && CanSeeObject(oNear) && !GetHasEffect(iEffect,oNear)) return oNear;
        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}


// this doesn't usually work correctly (GetHasSpellEffect)
object FindNearestEnemyWithoutSpellEffect(object oSelf, int iEffect, float fSize=30.0f)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( GetIsEnemy(oNear) && CanSeeObject(oNear) && !GetHasSpellEffect(iEffect,oNear)) return oNear;
        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}


// survey the battlefield with an evil eye looking for easy targets
object FindNearestVulnerableEnemy(object oSelf, float fSize=30.0f)
{

    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if(  GetIsEnemy(oNear) && CanSeeObject(oNear) && IsVulnerable(oNear)) return oNear;
        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;

}



object PickEnemy(object oSelf)
{
    object oP,oLast=OBJECT_INVALID;
    int i = 1;
    while(1)
    {
        oP = GetNearestCreature(CREATURE_TYPE_IS_ALIVE,TRUE,oSelf,i);
        if( GetIsObjectValid(oP) )
        {
            if(GetIsEnemy(oP) && CanSeeObject(oP) && !IsEnemyDead(oP))
            {
                if(d6() < 4) return oP;
                oLast = oP;
            }
            i = i + 1;
        }
        else {
            return oLast;
        }
    }
    return OBJECT_INVALID;

}

object FindNearestEnemy(object oSelf)
{
    int i = 1;
    while(1)
    {
        object oN = GetNearestCreature(CREATURE_TYPE_REPUTATION,REPUTATION_TYPE_ENEMY,OBJECT_SELF,i);
        if(!GetIsObjectValid(oN)) break;
        // have to make sure it can actually see it
        if(CanSeeObject(oN) && !IsEnemyDead(oN)) return oN;
        i = i + 1;
    }
    // silence error
    return OBJECT_INVALID;
}

object GetNearestLivingObject()
{
    return GetNearestCreature(CREATURE_TYPE_IS_ALIVE,TRUE);
}






int FindAreaOfEffectNearTarget(int iSpell, object oTarget, float fDist=5.0)
{
    object oAOE = GetNearestObject(OBJECT_TYPE_AREA_OF_EFFECT);

    int i=1;
    while(GetIsObjectValid(oAOE))
    {
        effect eF = GetFirstEffect(oAOE);
        while(GetIsEffectValid(eF))
        {
            int nSpellID = GetEffectSpellId(eF);
            if(nSpellID == iSpell)
                if( GetDistanceBetween(oAOE,oTarget) <= fDist)
                    return TRUE;
            eF = GetNextEffect(oAOE);
        }
        i = i+1;
        oAOE = GetNearestObject(OBJECT_TYPE_AREA_OF_EFFECT,OBJECT_SELF,i);
    }
    return FALSE;

}












/////////////////////////////////////////////////////////////////
// Spatial Reasoning
/////////////////////////////////////////////////////////////////

int GetTotalEnemiesInCone(location loc, float size=10.0)
{
    int n = 0;
    object oN = GetFirstObjectInShape(SHAPE_SPELLCONE,size,loc);
    while(GetIsObjectValid(oN))
    {
        oN = GetNextObjectInShape(SHAPE_SPELLCONE,size,loc);
        if(GetIsEnemy(oN) && !IsEnemyDead(oN) ) n++;
    }
    return n;
}

int GetTotalEnemiesInConeWithoutEffect(location loc, int iEffect, float size=10.0)
{
    int n = 0;
    object oN = GetFirstObjectInShape(SHAPE_SPELLCONE,size,loc);
    while(GetIsObjectValid(oN))
    {
        oN = GetNextObjectInShape(SHAPE_SPELLCONE,size,loc);
        if(GetIsEnemy(oN) && !IsEnemyDead(oN) && !GetHasEffect(iEffect,oN)) n++;
    }
    return n;
}


int GetTotalEnemiesInSphere(location loc, float size=10.0)
{
    int n = 0;
    object oN = GetFirstObjectInShape(SHAPE_SPHERE,size,loc);

    while(GetIsObjectValid(oN))
    {
        if(GetIsEnemy(oN) && !IsEnemyDead(oN)) n++;
        oN = GetNextObjectInShape(SHAPE_SPHERE,size,loc);
    }
    return n;
}


int GetMaxEnemiesNearby()
{
    int nTotal=0;

    object oE = GetNearestCreature(CREATURE_TYPE_REPUTATION,REPUTATION_TYPE_ENEMY,OBJECT_SELF,1);

    while(GetIsObjectValid(oE))
    {
        nTotal++;
        oE = GetNearestCreature(CREATURE_TYPE_REPUTATION,REPUTATION_TYPE_ENEMY,OBJECT_SELF,nTotal+1);
    }
    return nTotal;
}

// returns a normalized floating point that tells how many of
// the total enemies are in a sphere around oEnemy
float GetEnemyDensity(object oEnemy, float fRadius=15.0)
{
    int nTotal = GetTotalEnemiesInSphere(GetLocation(oEnemy),fRadius);
    float fR   = IntToFloat(nTotal)/IntToFloat(GetMaxEnemiesNearby());
    return fR;
}

int GetTotalEnemiesInSphereWithoutEffect(location loc, int iEffect, float size=10.0)
{
    int n = 0;
    object oN = GetFirstObjectInShape(SHAPE_SPHERE,size,loc);

    while(GetIsObjectValid(oN))
    {
        if(GetIsEnemy(oN) && !IsEnemyDead(oN) && !GetHasEffect(iEffect,oN)) n++;
        oN = GetNextObjectInShape(SHAPE_SPHERE,size,loc);
    }
    return n;
}


// maximize the amount of enemies in cone
object MaximizeCone(float fSize=15.0)
{
    int i=1;
    int max=-9999;
    float fMaxFace=-1.0;
    object oMax=OBJECT_INVALID;
    while(1)
    {
        object oObject = GetNearestCreature(CREATURE_TYPE_REPUTATION,
                                            REPUTATION_TYPE_ENEMY,
                                            OBJECT_SELF,
                                            i);
        if(GetIsObjectValid(oObject))
        {
            vector vPos   = GetPosition(oObject);
            vector vMy    = GetPosition(OBJECT_SELF);

            float Facing  = VectorToAngle(VectorNormalize(vPos - vMy));
            PrintString("Facing="+FloatToString(Facing));
            location lLoc = Location(GetArea(oObject),
                                     vMy,
                                     Facing);
            int nTotal = GetTotalEnemiesInCone(lLoc,fSize);
            if(nTotal > max && nTotal > 0)
            {
                max      = nTotal;
                fMaxFace = Facing;
                oMax     = oObject;
            }
            i = i + 1;
        }
        else
            break;
    }
    if(max > 0) {
        SetFacing(fMaxFace);
        SpeakString("max="+IntToString(max));
        return oMax;
    }
    else return OBJECT_INVALID;
}

// maximize number of enemies in cone without effect
object MaximizeConeWithoutEffect(int iEffect, float fSize=15.0)
{
    int i=1;
    int max=-9999;
    float fMaxFace=-1.0;
    object oMax=OBJECT_INVALID;
    while(1)
    {
        object oObject = GetNearestCreature(CREATURE_TYPE_REPUTATION,
                                            REPUTATION_TYPE_ENEMY,
                                            OBJECT_SELF,
                                            i);
        if(GetIsObjectValid(oObject))
        {
            vector vPos   = GetPosition(oObject);
            vector vMy    = GetPosition(OBJECT_SELF);

            float Facing  = VectorToAngle(VectorNormalize(vPos - vMy));
            PrintString("Facing="+FloatToString(Facing));
            location lLoc = Location(GetArea(oObject),
                                     vMy,
                                     Facing);
            int nTotal = GetTotalEnemiesInConeWithoutEffect(lLoc,iEffect,fSize);
            if(nTotal > max && nTotal > 0)
            {
                max      = nTotal;
                fMaxFace = Facing;
                oMax     = oObject;
            }
            i = i + 1;
        }
        else
            break;
    }
    if(max > 0) {
        SetFacing(fMaxFace);
        SpeakString("max="+IntToString(max));
        return oMax;
    }
    else return OBJECT_INVALID;
}




int IsFighter(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_FIGHTER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_PALADIN ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_RANGER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_MONK ||
           // don't know, if should include this guy or not.
           GetClassByPosition(i,oTarget) == CLASS_TYPE_CLERIC)
            return TRUE;
    }
    return FALSE;
}

int IsMagicUser(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_SORCERER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_WIZARD)
            return TRUE;
    }
    return FALSE;
}

int IsCleric(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_CLERIC)
            return TRUE;
    }
    return FALSE;
}

// some classes which can cast spells are not counted atm
int IsSpellCaster(object oTarget)
{
    int i=1;
    for(i = 1; i < 4; i++)
    {
        if(GetClassByPosition(i,oTarget) == CLASS_TYPE_SORCERER ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_WIZARD ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_CLERIC ||
           GetClassByPosition(i,oTarget) == CLASS_TYPE_DRUID)
            return TRUE;
    }
    return FALSE;
}

object FindNearestEnemyMagicUser(object oSelf=OBJECT_SELF,float fSize=30.0)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( GetIsEnemy(oNear) && CanSeeObject(oNear) && IsMagicUser(oNear) && !IsEnemyDead(oNear) ) return oNear;

        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}

object FindNearestEnemyCleric(object oSelf=OBJECT_SELF,float fSize=30.0)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( GetIsEnemy(oNear) && CanSeeObject(oNear)&& IsCleric(oNear) && !GetIsDead(oNear)) return oNear;

        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}

object FindNearestEnemySpellCaster(object oSelf=OBJECT_SELF, float fSize=30.0)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( GetIsEnemy(oNear) && CanSeeObject(oNear) && IsSpellCaster(oNear) && !IsEnemyDead(oNear)) return oNear;

        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}

object FindNearestRangedEnemy(object oSelf=OBJECT_SELF, float fSize=30.0f)
{
    object oNear = GetFirstObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    while(GetIsObjectValid(oNear))
    {
        if( GetIsEnemy(oNear) && CanSeeObject(oNear) &&
            GetWeaponRanged(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND,oNear)) &&
            !IsEnemyDead(oNear))

           return oNear;

        oNear = GetNextObjectInShape(SHAPE_SPHERE,fSize,GetLocation(oSelf));
    }
    return OBJECT_INVALID;
}

int NoPsychology(object oTarget)
{
    return !GetHasEffect(EFFECT_TYPE_DAZED,oTarget) &&
           !GetHasEffect(EFFECT_TYPE_SLEEP,oTarget) &&
           !GetHasEffect(EFFECT_TYPE_CHARMED,oTarget) &&
           !GetHasEffect(EFFECT_TYPE_DOMINATED,oTarget) &&
           !GetHasEffect(EFFECT_TYPE_PARALYZE,oTarget) &&
           !GetHasEffect(EFFECT_TYPE_STUNNED,oTarget);
}




void CastAt(object oTarget, int spell)
{
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(spell,oTarget);
    ActionWait(6.0);
}

void CastAtLocation(location loc, int spell)
{
    ClearAllActions(TRUE);
    ActionCastSpellAtLocation(spell,loc);
    ActionWait(6.0);
}

// will cast spell at a location halfway between caster and target
void CastBetween(int iSpell, object oTarget=OBJECT_INVALID)
{
    object oNear;

    if(oTarget==OBJECT_INVALID)
        oNear= FindNearestEnemy(OBJECT_SELF);
    else
        oNear = oTarget;

    float D = GetDistanceToObject(oNear);


    float P = D/2.0;
    vector vMy = GetPosition(OBJECT_SELF);
    vector vN  = GetPosition(oNear);
    // for whatever reason, I believe it should be: vMy - vN
    // but for some reason, it is facing the wrong way.
    vector vP  = VectorNormalize(vN - vMy);
    vector vL  = vMy + (P*vP);
    float  Facing = VectorToAngle(vP);

    ClearAllActions(TRUE);
    ActionCastSpellAtLocation( iSpell,
                        Location(GetArea(OBJECT_SELF),
                                 vL,
                                 Facing) );

}


// used for summoning (non-game functions)
void Summon(string resref, int num, location loc)
{
    int n = num;
    int i;

    for(i = 0; i < n; i++)
    {
        effect eSummon = EffectVisualEffect(VFX_IMP_UNSUMMON);
        object oSummon = CreateObject(OBJECT_TYPE_CREATURE,resref,loc);
        ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY,eSummon,loc,15.0);
    }
}




// cast at enemy that does not have effect
void CastAtWithoutEffect(int iEffect, int spell)
{
    object oDoom = FindNearestEnemyWithoutEffect(OBJECT_SELF,iEffect);
    if(!GetIsObjectValid(oDoom)) oDoom = FindNearestEnemy(OBJECT_SELF);
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(spell,oDoom);
    ActionWait(6.0);
}


void CastAtWeakest(int spell)
{
    object oDoom = FindWeakestEnemy(OBJECT_SELF);
    if(!GetIsObjectValid(oDoom)) oDoom = FindNearestEnemy(OBJECT_SELF);
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(spell,oDoom);
    ActionWait(6.0);

}

void CastAtStrongest(int spell)
{
    object oDoom = FindStrongestEnemy(OBJECT_SELF);
    if(!GetIsObjectValid(oDoom)) oDoom = FindNearestEnemy(OBJECT_SELF);
    ClearAllActions(TRUE);
    ActionCastSpellAtObject(spell,oDoom);
    ActionWait(6.0);

}

// 1st level wizard
void CastGrease(object oDoom)
{
    CastAtLocation(GetLocation(oDoom),SPELL_GREASE);
}


// will put a grease spell at a location in between caster and
// enemy.
void CastGreaseBetween(object oTarget=OBJECT_INVALID)
{
    object oNear;

    if(oTarget==OBJECT_INVALID)
        oNear= FindNearestEnemy(OBJECT_SELF);
    else
        oNear = oTarget;

    float D = GetDistanceToObject(oNear);


    float P = D/2.0;
    vector vMy = GetPosition(OBJECT_SELF);
    vector vN  = GetPosition(oNear);
    // for whatever reason, I believe it should be: vMy - vN
    // but for some reason, it is facing the wrong way.
    vector vP  = VectorNormalize(vN - vMy);
    vector vL  = vMy + (P*vP);
    float  Facing = VectorToAngle(vP);

    ClearAllActions(TRUE);
    ActionCastSpellAtLocation( SPELL_GREASE,
                        Location(GetArea(OBJECT_SELF),
                                 vL,
                                 Facing) );

}








