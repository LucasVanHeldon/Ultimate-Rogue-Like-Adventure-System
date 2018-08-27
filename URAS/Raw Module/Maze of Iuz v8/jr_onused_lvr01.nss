

// Lever OnUsed script
// By:Axe Murderer
// Posted: Monday, 24 May 2004 08:17PM
// Modified by: JayAre
// Date: Tuesday, 07 Sep 2004 11:14AM
//:://////////////////////////////////

void main()
{ if( GetIsObjectValid( GetLastUsedBy()))
  { // Animate the lever.
    int iAnimation = GetLocalInt( OBJECT_SELF, "LeverState");
    if( iAnimation == 0)
    { iAnimation = ANIMATION_PLACEABLE_ACTIVATE;
      SetLocalInt( OBJECT_SELF, "LeverState", 1);
    }
    else
    { iAnimation = ANIMATION_PLACEABLE_DEACTIVATE;
      DeleteLocalInt( OBJECT_SELF, "LeverState");
    }
    PlayAnimation( iAnimation);

    // Put Lever activation code here.
object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

int iOpenDoor;
iOpenDoor=GetLocalInt(oPC, "GateOpen");

if (iOpenDoor == 0)
   {
   object oTarget = GetObjectByTag("FrontGate01");

   AssignCommand(oTarget, ActionOpenDoor(oTarget));

   SetLocalInt(oPC, "GateOpen", 1);

   }
else
   {
   object oTarget = GetObjectByTag("FrontGate01");

   AssignCommand(oTarget, ActionCloseDoor(oTarget));

   SetLocalInt(oPC, "GateOpen", 0);

   }
  }
}

