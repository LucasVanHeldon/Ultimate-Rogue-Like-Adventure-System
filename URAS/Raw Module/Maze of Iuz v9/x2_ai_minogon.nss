#include "x2_inc_switches"
#include "nw_i0_generic"
#include "x0_i0_spawncond"
#include "ai_inc"


void main()
{
    object oEnemy = bkAcquireTarget();
    if(GetHasSpell(SPELLABILITY_HOWL_STUN))
    {
        oEnemy = FindNearestEnemyWithoutEffect(OBJECT_SELF,EFFECT_TYPE_STUNNED);
        if(GetIsObjectValid(oEnemy))
        {
            __TurnCombatRoundOn(TRUE);
            ActionCastSpellAtObject(SPELLABILITY_HOWL_STUN,oEnemy);
            __TurnCombatRoundOn(FALSE);
        }
        else
        {
            __TurnCombatRoundOn(TRUE);
            ActionEquipMostDamagingMelee(oEnemy);
            ActionAttack(oEnemy);
            __TurnCombatRoundOn(FALSE);
        }
   }
}
