void main()
{
 PlaySound("as_cv_gongring2");

 object oPC = GetLastUsedBy();

 if (!GetIsPC(oPC)) return;

 object oTarget;
 oTarget = GetObjectByTag("MarkessaDoor");

 SetLocked(oTarget, FALSE);

 AssignCommand(oTarget, ActionOpenDoor(oTarget));
}
