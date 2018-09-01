
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
            if(!GetHasEffect(EFFECT_TYPE_PETRIFY,oMax))
            {
                ClearAllActions(TRUE);
                ActionCastSpellAtObject(SPELLABILITY_GAZE_PETRIFY,oMax,METAMAGIC_ANY,TRUE);
            }
          }
        }
        break;
        }
        case 1005:
        {
            object oTarget = FindNearestEnemy(OBJECT_SELF);
            if(!GetIsObjectValid(oTarget)) break;
            if(d6()==1 && !GetHasEffect(EFFECT_TYPE_PETRIFY,oTarget))
            {
                ClearAllActions(TRUE);
                ActionCastSpellAtObject(SPELLABILITY_GAZE_PETRIFY,oTarget,METAMAGIC_ANY,TRUE);
            }
        }
    }
}
