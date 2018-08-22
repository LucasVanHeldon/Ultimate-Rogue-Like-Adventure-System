//::///////////////////////////////////////////////
//:: FileName at_startderish
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 9/5/2004 8:03:54 PM
//:://////////////////////////////////////////////
#include "nw_i0_plot"

void main()
{

    // Either open the store with that tag or let the user know that no store exists.
    object oStore = GetNearestObjectByTag("DerishStore1");
    if(GetObjectType(oStore) == OBJECT_TYPE_STORE)
        OpenStore(oStore, GetPCSpeaker()); //This does not use the Appraise Skill
    else
        ActionSpeakStringByStrRef(53090, TALKVOLUME_TALK);
}
