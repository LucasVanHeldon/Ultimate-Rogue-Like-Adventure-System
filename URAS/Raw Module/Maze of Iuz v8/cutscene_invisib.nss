//::///////////////////////////////////////////////
//:: Name Cut-Scene Invisibility
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
     OnSpawn script to give permanent 'Cut-Scene
     Invisibility.'
*/
//:://////////////////////////////////////////////
//:: Created By: FallenDruid
//:: Created On: August 11, 2005 09:26PM
//:://////////////////////////////////////////////

void main()
{
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_CUTSCENE_INVISIBILITY), OBJECT_SELF);
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectCutsceneGhost(), OBJECT_SELF);
}

