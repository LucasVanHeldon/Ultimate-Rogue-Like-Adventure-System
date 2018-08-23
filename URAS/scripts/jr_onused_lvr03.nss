//::///////////////////////////////////////////////
//:: Lever OnUsed script
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: Axe Murderer
//:: Created On: Monday, 24 May 2004 08:17PM
//:: Modified by: JayAre
//:: Modified Date: Tuesday, 07 Sep 2004 11:14AM
//:://////////////////////////////////////////////

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

    object oTarget;
    oTarget = GetNearestObjectByTag("X0_TRAP_GREAS");

    DestroyObject(oTarget, 0.0);

  }
}

