#include "x0_i0_spawncond"
#include "inc_demons"
#include "inc_mmp"
#include "inc_aberration"


void SpecialAttack()
{
    switch(d3())
    {
    case 1:
        SendMessageToPC(GetFirstPC(),"Darkness");
        DEMON_CastDarkness();
        break;
    case 2:
        SendMessageToPC(GetFirstPC(),"Dispel Magic");
        DEMON_DispelSpellCaster();
        break;
    case 3:
        DEMON_Teleport();
        break;
    case 4:
        MMPABB_SpecialAttack();
        break;

    }
}

void main()
{
    if(GetLocalInt(OBJECT_SELF,"bGated") == 0 && GetCurrentHitPoints() < 20)
    {

        SetLocalInt(OBJECT_SELF,"bGated",1);
        ClearAllActions(TRUE);
        ActionCastFakeSpellAtLocation(SPELL_GATE,GetLocation(OBJECT_SELF));
        int chance = Random(100);
        if(chance < 50)
        {
            int i;
            for(i = 0; i < d6(2); i++)
            {
                effect eVis = EffectVisualEffect(VFX_FNF_SUMMON_MONSTER_1);
                object oD = CreateObject(OBJECT_TYPE_CREATURE,"babau",GetLocation(OBJECT_SELF));
                // summons can't gate
                SetLocalInt(oD,"bGated",1);
                ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eVis,GetLocation(OBJECT_SELF));
            }
        }
    }
    else if(d6() < 3)
    {
        SpecialAttack();
    }
}
