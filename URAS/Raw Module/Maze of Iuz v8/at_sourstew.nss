//::///////////////////////////////////////////////
//:: FileName at_sourstew
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: JayAre
//:: Created On: 7/3/2005 11:25:36 PM
//:://////////////////////////////////////////////
void main()
{
    object oPC = GetPCSpeaker();

    object oTarget;
    oTarget = GetObjectByTag("GoblinCookAssistant");
    // Move to PC
    AssignCommand(oTarget, ActionMoveToObject(oPC));
    ActionWait(2.0f);
    AssignCommand(oTarget, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0f, 1.0f));

    // Give the speaker the items
    CreateItemOnObject("sourstew", oPC, 1);

}
