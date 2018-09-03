#include "x0_i0_spawncond"
#include "ai_inc"

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();

    __TurnCombatRoundOn(TRUE);
    if(GetLocalInt(OBJECT_SELF,"bSummons") == 0)
    {
        SetLocalInt(OBJECT_SELF,"bSummons",1);
        int x = Random(2);
        int n = d4(4)+1;
        switch(x)
        {
        case 0:
            for(i = 0; i < n; i++)
            {
                CreateObject(OBJECT_TYPE_CREATURE,"NW_RATDIRE001",GetLocation(OBJECT_SELF));
            }
            break;
        case 1:
            for(i = 0; i < n; i++)
            {
                CreateObject(OBJECT_TYPE_CREATURE,"NW_WOLF",GetLocation(OBJECT_SELF));
            }
            break;
        }
   }
   else if(d6() < 4)
   {
      object oMax = MaximizeCone(15.0);
      object oNear = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_DOMINATED);
      float D = GetDistanceToObject(oNear);
      if(D > 2.0 && D < 15.0)
      {
        if(!GetIsObjectValid(oMax)) oMax =oNear;
        if(!GetHasEffect(EFFECT_TYPE_DOMINATED,oMax))
        {
            ActionCastSpellAtObject(SPELLABILITY_GAZE_DOMINATE,oMax,METAMAGIC_ANY,TRUE);
        }
      }
    }
    __TurnCombatRoundOn(FALSE);
}
