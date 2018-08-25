#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_demonic"

void main()
{
    if(GetLocalInt(OBJECT_SELF,"nAura") == 0)
    {
        SetLocalInt(OBJECT_SELF,"nAura",1);
        ClearAllActions(TRUE);
        ActionCastSpellAtObject(SPELL_UNHOLY_AURA,OBJECT_SELF,METAMAGIC_ANY,TRUE);
    }
    else if(d6() < 3)
    {
        __TurnCombatRoundOn(TRUE);
        DEMONIC_SpecialAttack();
        __TurnCombatRoundOn(FALSE);

    }


}
