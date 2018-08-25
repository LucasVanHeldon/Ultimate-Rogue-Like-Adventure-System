#include "ai_inc"


void main()
{



    object o = GetFirstObjectInShape(SHAPE_SPHERE,15.0,GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(o))
    {
        if(NoPsychology(o) && GetIsEnemy(o) && !GetIsDead(o) )
        {
            __TurnCombatRoundOn(TRUE);
            SendMessageToPC(GetFirstPC(),"Herr-derr");
            ActionCastSpellAtObject(SPELL_DOMINATE_MONSTER,o,METAMAGIC_ANY,TRUE);
            __TurnCombatRoundOn(FALSE);
            return;
        }
        o = GetNextObjectInShape(SHAPE_CONE,15.0,GetLocation(OBJECT_SELF));
    }


    if( GetCurrentHitPoints() < 20
        && !GetHasEffect(EFFECT_TYPE_INVISIBILITY,OBJECT_SELF))
    {
        __TurnCombatRoundOn(TRUE);
        ActionCastSpellAtObject(SPELL_INVISIBILITY,OBJECT_SELF,METAMAGIC_ANY,TRUE);
        __TurnCombatRoundOn(FALSE);
    }

}
