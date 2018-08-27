// hcr3.1
// took out old subrace code.
// took out remove plot done in fugue exit.
// persistence.
// took out godsystem now in death code.
// removed move corpse.
// added raise animation.
// 5.5.1
// add if subrace code.
// HCR 5.5 change by Lorinton
// 5.4
// Took out removing diamond cost for clerics of same diety.
// 5.3 changed public cd key to player name
// added moving code thanks to Cablesrv
#include "hc_inc"
#include "hc_inc_remeff"
// sr5
#include "hc_inc_rezpen"
#include "hc_inc_transfer"
#include "hc_text_activate"
// hcr3
#include "hc_inc_dcorpse"

int TRUE_RESS=3;
int RESS=2;
int RAISE=1;
int NONE=0;

void MoveDC(object oDropped, object oUser)
{
            object oDC=GetLocalObject(oDropped,"DeathCorpse");
            object oOwner=GetLocalObject(oDropped,"Owner");
            string sName=GetLocalString(oDropped,"Name");
            string sCDK=GetLocalString(oDropped,"Key");

// If a Death Corpse exits, move all the stuff from the old one to the new one
// at the new location
            object oDeadMan;
            object oDeathCorpse;
            oDeathCorpse=CreateObject(OBJECT_TYPE_PLACEABLE, "DeathCorpse",
                                    GetLocation(oUser));

            SetLocalObject(oMod,"DeathCorpse"+sName+sCDK,oDeathCorpse);
            SetLocalObject(oMod,"PlayerCorpse"+sName+sCDK,oDeadMan);
            SetLocalObject(oDeathCorpse,"Owner",oOwner);
            SetLocalString(oDeathCorpse,"Name",sName);
            SetLocalString(oDeathCorpse,"Key",sCDK);
}

void main()
{
    int casttype=NONE;
    object oUser=GetPCSpeaker();
    object oCleric=GetLocalObject(oUser,"CLERIC");
    object oRespawner=GetLocalObject(oUser,"DEADMAN");
    object oItem=GetLocalObject(oUser,"ITEM");
    int iLevel=GetLevelByClass(CLASS_TYPE_CLERIC, oCleric);
    int nGold=GetGold(oUser);
    int nBaseCost=1;
    if (GetLocalInt(oRespawner, "MOVING")) {
        SendMessageToPC(oUser, NOTRAISE);
        return;
    }
    // Find out how much, and see if they have that much gold.
    int iRezAmount = 90*iLevel+5000*nBaseCost;
    if (nGold >=iRezAmount)
        casttype = TRUE_RESS;
    if (casttype == NONE)
    {
        SendMessageToPC( oUser, NOTENOUGH+IntToString(iRezAmount)+" gps.");
        return;
    }
    // Charge em and raise the dead man
    AssignCommand( oCleric, TakeGoldFromCreature(iRezAmount, oUser, TRUE));
    SendMessageToPC( oUser, CLERICACCEPT);
    // hcr3 added animation to the priest for ressing.
    AssignCommand(oCleric, ActionCastFakeSpellAtObject(SPELL_RESURRECTION, oCleric));
    if(GetIsObjectValid(oRespawner))
    {
        // hcr3
        //MoveDC(oItem, oUser);
        RemoveEffects(oRespawner);
        // 5.5 Lorinton change - don't use AssignCommand
        //AssignCommand(oRespawner, ApplyEffectToObject(DURATION_TYPE_INSTANT,
        //        EffectResurrection(), oRespawner));
        ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectResurrection(),oRespawner);
        // 5.5 added code to attack target if ressed near hostiles.
        DelayCommand(5.0, ExecuteScript("hc_attackpc" , oRespawner));
        //if(GetLocalInt(oMod,"BLEEDSYSTEM") && GetIsPC(oRespawner))
        //{
        //        DelayCommand(6.0,ExecuteScript("hc_bleeding", oRespawner));
        //}
// Lorinton note
// I commented out the code from here down to the next Lorinton change comment.
// I believe Jamos said he no longer takes constitution points as a res penalty.
//        string sID = GetName(oRespawner)+GetPCPlayerName(oRespawner);
//        effect eConDec = ExtraordinaryEffect( EffectAbilityDecrease(ABILITY_CONSTITUTION, GetPersistentInt(GetModule(),"CONPEN"+sID)));
//        AssignCommand( oRespawner, ApplyEffectToObject( DURATION_TYPE_PERMANENT,  eConDec, oRespawner ));
        // 5.5 Lorinton change - don't use AssignCommand & use DelayCommand
        //AssignCommand( oRespawner, ApplyEffectToObject(DURATION_TYPE_INSTANT,
        //        EffectHeal(GetMaxHitPoints(oRespawner)), oRespawner));
        DelayCommand( 2.0, AssignCommand( oRespawner, JumpToObject(oCleric)));
        SPS(oRespawner,PWS_PLAYER_STATE_ALIVE);
    }
    else
    {
        SendMessageToPC(oUser,NOTONLINE);
        // hcr3 7/27/2003 persistence.
        int nPersist = GetLocalInt(oMod, "PERSIST");

        if (nPersist)
        {
          // hcr3 persist 7/27/2003
          string sID = GetLocalString(oItem, "PKey");
          SetCampaignInt("HCRPC" + sID, "PlayerState", 8);
        }
        //SPS(oRespawner,PWS_PLAYER_STATE_RESTRUE);
        SetPersistentLocation(oMod,"RESLOC"+
            GetLocalString(oItem,"Name")+
            GetLocalString(oItem,"Key"), GetLocation(oCleric));
        SetPersistentInt(oMod,"PlayerState"+
              GetLocalString(oItem,"Name")+
              GetLocalString(oItem,"Key"), PWS_PLAYER_STATE_RESTRUE);
     }
// Get rid of the Player Corpse item
    DestroyObject(oItem);
    // hcr3 destroy death corpse in fugue.
    DestroyCorpse(oRespawner);
}
