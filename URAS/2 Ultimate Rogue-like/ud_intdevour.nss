//::///////////////////////////////////////////////
//:: Default: On User Defined
//:: NW_C2_DEFAULTD
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determines the course of action to be taken
    on a user defined event.
*/
//:://////////////////////////////////////////////
//:: Created By: Don Moar
//:: Created On: April 28, 2002
//:://////////////////////////////////////////////
#include "x0_i0_spawncond"
#include "ai_inc"

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1002:
    {
        object oSeen=GetLastPerceived();
        if(GetIsPC(oSeen) && GetLastPerceptionSeen())
        {
          object oMax = MaximizeCone(15.0);
          object oNear = FindNearestEnemy(OBJECT_SELF);
          float D = GetDistanceToObject(oNear);
          if(D > 2.0 && D < 15.0)
          {
            string sCon = "D="+FloatToString(D);
            SendMessageToPC(GetFirstPC(),sCon);
            if(!GetIsObjectValid(oMax)) oMax = oSeen;
            if(!GetHasEffect(EFFECT_TYPE_DOMINATED,oMax))
            {
                ClearAllActions(TRUE);
                ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,oMax,METAMAGIC_ANY,TRUE);
            }
          }
        }
        break;
        }
        case 1005:
        {
            object oTarget = FindNearestEnemy(OBJECT_SELF);
            if(!GetIsObjectValid(oTarget)) break;
            if(d6()==1 && !GetHasEffect(EFFECT_TYPE_DOMINATED,oTarget))
            {
                ClearAllActions(TRUE);
                ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,oTarget,METAMAGIC_ANY,TRUE);
            }
            else
                if( GetCurrentHitPoints() < 20
                && !GetHasEffect(EFFECT_TYPE_INVISIBILITY,OBJECT_SELF))
            {
                ClearAllActions(TRUE);
                ActionCastSpellAtObject(SPELL_INVISIBILITY,OBJECT_SELF,METAMAGIC_ANY,TRUE);
            }

        }
    }
}
