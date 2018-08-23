//::///////////////////////////////////////////////
//:: FileName at_moldybread
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: 7/3/2005 11:29:43 PM
//:://////////////////////////////////////////////
void main()
{
    object oPC = GetPCSpeaker();

    object oTarget;
    oTarget = GetObjectByTag("GoblinCookAssistant1");
    // Move to PC
    AssignCommand(oTarget, ActionMoveToObject(oPC));
    ActionWait(2.0f);
    AssignCommand(oTarget, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0f, 1.0f));

    // Give the speaker the items
    CreateItemOnObject("moldybread", oPC, 1);

}
