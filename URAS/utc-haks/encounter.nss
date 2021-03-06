
#include "x0_i0_stringlib"
#include "nw_i0_generic"

void Fill(int nCR,object o = OBJECT_SELF);

// see table on page 49 of DMG
// it's the best I could figure out how it was constructed.

float CalcNumFromELCR(int el, float CR);

// there are no arrays in NWScript
// the number if the EL, and each function lookups the CR from the number given by the table.
// even though the other formula works there are a few cases I do not understand why they shift it.
float CR1(int num)
{
    switch(num)
    {
    case 1: return 1.0;
    default: return 0.5;
    }
    return 1.0;
}

float CR2(int num)
{
    switch(num)
    {
    case 1: return 2.0;
    case 2: return 1.0;
    default: return 0.5;
    }
    return 1.0;
}

float CR3(int num)
{
    switch(num)
    {
    case 1: return 3.0;
    case 2: return 2.0;
    case 3: return 1.0;
    case 4: return 1.0;
    default: return 0.5;
    }
    return 1.0;
}

float CR4(int num)
{
    switch(num)
    {
    case 1: return 4.0;
    case 2: return 2.0;
    case 3: return 2.0;
    case 4: return 1.0;
    case 5: return 1.0;
    default: return 0.5;
    }
    return 1.0;
}

float CR5(int num)
{
    switch(num)
    {
    case 1: return 5.0;
    case 2: return 3.0;
    case 3: return 2.0;
    case 4: return 2.0;
    case 5:
    case 6: return 1.0;
    case 7:
    case 8:
    case 9: return 1.0;

    default: return 0.5;
    }
    return 1.0;
}

float CR6(int num)
{
    switch(num)
    {
    case 1: return 6.0;
    case 2: return 4.0;
    case 3: return 3.0;
    case 4: return 2.0;
    case 5:
    case 6: return 2.0;
    case 7:
    case 8:
    case 9: return 1.0;
    default: return 0.5;
    }
    return 1.0;
}

float CR7(int num)
{
    switch(num)
    {
    case 1: return 7.0;
    case 2: return 5.0;
    case 3: return 4.0;
    case 4: return 3.0;
    case 5:
    case 6: return 3.0;
    case 7:
    case 8:
    case 9: return 1.0;
    default: return 0.5;
    }
    return 1.0;
}

float CR8(int num)
{
    switch(num)
    {
    case 1: return 8.0;
    case 2: return 6.0;
    case 3: return 5.0;
    case 4: return 4.0;
    case 5:
    case 6: return 3.0;
    case 7:
    case 8:
    case 9: return 2.0;
    case 10:
    case 11:
    case 12: return 1.0;
    }
    return 1.0;
}

float CR9(int num)
{
    switch(num)
    {
    case 1: return 9.0;
    case 2: return 7.0;
    case 3: return 6.0;
    case 4: return 5.0;
    case 5:
    case 6: return 4.0;
    case 7:
    case 8:
    case 9: return 3.0;
    case 10:
    case 11:
    case 12: return 2.0;
    }
    return 1.0;
}

float CR10(int num)
{
    switch(num)
    {
    case 1: return 10.0;
    case 2: return 8.0;
    case 3: return 7.0;
    case 4: return 6.0;
    case 5:
    case 6: return 5.0;
    case 7:
    case 8:
    case 9: return 4.0;
    case 10:
    case 11:
    case 12: return 3.0;
    }
    return 1.0;
}

float CR11(int num)
{
    switch(num)
    {
    case 1: return 11.0;
    case 2: return 9.0;
    case 3: return 8.0;
    case 4: return 7.0;
    case 5:
    case 6: return 6.0;
    case 7:
    case 8:
    case 9: return 5.0;
    case 10:
    case 11:
    case 12: return 4.0;
    }
    return 1.0;
}

float CR12(int num)
{
    switch(num)
    {
    case 1: return 12.0;
    case 2: return 10.0;
    case 3: return 9.0;
    case 4: return 8.0;
    case 5:
    case 6: return 7.0;
    case 7:
    case 8:
    case 9: return 6.0;
    case 10:
    case 11:
    case 12: return 5.0;
    }
    return 1.0;
}




float CR13(int num)
{
    switch(num)
    {
    case 1: return 13.0;
    case 2: return 11.0;
    case 3: return 10.0;
    case 4: return 9.0;
    case 5:
    case 6: return 8.0;
    case 7:
    case 8:
    case 9: return 7.0;
    case 10:
    case 11:
    case 12: return 6.0;
    }
    return 1.0;
}

float CR14(int num)
{
    switch(num)
    {
    case 1: return 14.0;
    case 2: return 12.0;
    case 3: return 11.0;
    case 4: return 10.0;
    case 5:
    case 6: return 9.0;
    case 7:
    case 8:
    case 9: return 8.0;
    case 10:
    case 11:
    case 12: return 7.0;
    }
    return 1.0;
}

float CR15(int num)
{
    switch(num)
    {
    case 1: return 15.0;
    case 2: return 13.0;
    case 3: return 12.0;
    case 4: return 11.0;
    case 5:
    case 6: return 10.0;
    case 7:
    case 8:
    case 9: return 9.0;
    case 10:
    case 11:
    case 12: return 8.0;
    }
    return 1.0;
}


float CR16(int num)
{
    switch(num)
    {
    case 1: return 16.0;
    case 2: return 14.0;
    case 3: return 13.0;
    case 4: return 12.0;
    case 5:
    case 6: return 11.0;
    case 7:
    case 8:
    case 9: return 10.0;
    case 10:
    case 11:
    case 12: return 9.0;
    }
    return 1.0;
}

float CR17(int num)
{
    switch(num)
    {
    case 1: return 17.0;
    case 2: return 15.0;
    case 3: return 14.0;
    case 4: return 13.0;
    case 5:
    case 6: return 12.0;
    case 7:
    case 8:
    case 9: return 11.0;
    case 10:
    case 11:
    case 12: return 10.0;
    }
    return 1.0;
}

float CR18(int num)
{
    switch(num)
    {
    case 1: return 18.0;
    case 2: return 16.0;
    case 3: return 15.0;
    case 4: return 14.0;
    case 5:
    case 6: return 13.0;
    case 7:
    case 8:
    case 9: return 12.0;
    case 10:
    case 11:
    case 12: return 11.0;
    }
    return 1.0;
}

float CR19(int num)
{
    switch(num)
    {
    case 1: return 19.0;
    case 2: return 17.0;
    case 3: return 16.0;
    case 4: return 15.0;
    case 5:
    case 6: return 14.0;
    case 7:
    case 8:
    case 9: return 13.0;
    case 10:
    case 11:
    case 12: return 12.0;
    }
    return 1.0;
}

// it simulates a 2-d array lookup, EL is the row number, num is the column, returns the CR for that amount.
// I am not sure if I computer EL or just average level, I think it is confusing.
float CRTableLookup(int EL, int num)
{
    switch(EL)
    {
    case 0:
    case 1: return CR1(num);
    case 2: return CR2(num);
    case 3: return CR3(num);
    case 4: return CR4(num);
    case 5: return CR5(num);
    case 6: return CR6(num);
    case 7: return CR7(num);
    case 8: return CR8(num);
    case 9: return CR9(num);
    case 10: return CR10(num);
    case 11: return CR11(num);
    case 12: return CR12(num);
    case 13: return CR13(num);
    case 14: return CR14(num);
    case 15: return CR15(num);
    case 16: return CR16(num);
    case 17: return CR17(num);
    case 18: return CR18(num);
    case 19: return CR19(num);

    }
    return IntToFloat(EL);
}

float CalcCR(int EL, int num)
{
    if(EL < 1) EL = 1;
    if(num < 1) num = 1;
    if(num > 12) num = 12;

    return CRTableLookup(EL+FloatToInt(GetLocalFloat(GetModule(),"fCR")),num);

}

float CalcNumFromELCR(int el, float CR)
{

    if(el <= 0) el = 1;
    if(CR <= 0.0) CR = 0.5;

    float n =  IntToFloat(el) / (CR);
    if(n - fabs(n) >= 0.5) n+=1.0;
    int difficulty = GetLocalInt(GetModule(),"difficulty");
    if(difficulty <= -2) n = n / 4;
    else if(difficulty == -1) n = n / 2;
    else if(difficulty == 1) n = n + n/2;
    else if(difficulty == 2) n = 2*n;

    if(n < 1.0)  n = 1.0;
    return n;
}

void DoPop(object oC, int CR, string list)
{
    //SendMessageToPC(GetFirstPC(),"Populating="+IntToString(CR));

    struct sStringTokenizer toks = GetStringTokenizer(list,",");
    int cnt = 0;

    while( HasMoreTokens(toks) )
    {
        toks = AdvanceToNextToken(toks);

        string r = GetNextToken(toks);
        //SendMessageToPC(GetFirstPC(),"Token="+r);
        cnt = cnt+1;

        string bp = "BP"+IntToString(CR)+"_"+IntToString(cnt);
        SetLocalString(oC,bp,r);

    }
    SetLocalInt(oC,"nNum"+IntToString(CR),cnt);
}


void PopulateVars(object oC,int CR,string list)
{
    if(GetLocalInt(oC,"nNum"+IntToString(CR)) == 0)
    {
        DoPop(oC,CR,list);
    }

}

// this computes average of all nearby PCs, which I think is actually ECL, not EL.
// this only works if spawned from a table. You can use the game engine to give you a CR, but you need
// multiple objects for each CR level
int CalcEL_nearby(object oC)
{
    object oX = GetFirstObjectInShape(SHAPE_SPHERE,120.0,GetLocation(oC));
    int total = 0;
    int cnt = 0;

    while(GetIsObjectValid(oX))
    {
        if(GetIsEnemy(oX,oC) || GetIsPC(oX))
        {
            total += GetCharacterLevel(oX);
            cnt++;
        }
        oX = GetNextObjectInShape(SHAPE_SPHERE,120.0,GetLocation(oC));
    }
    //SendMessageToPC(GetFirstPC(),"total="+IntToString(total)+",cnt="+IntToString(cnt));
    if(cnt == 0) return 0;
    return total/cnt;
}

// compute average difficult of all PCs, in party or not.
// since this is mainly a solo/single party mod.
int CalcEL(object oC)
{
    object oX = GetFirstPC();
    int total = 0;
    int cnt = 0;

    while(GetIsObjectValid(oX))
    {
        if(GetIsEnemy(oX,oC) || GetIsPC(oX))
        {
            total += GetCharacterLevel(oX);
            cnt++;
        }
        oX = GetNextPC();
    }
    //SendMessageToPC(GetFirstPC(),"total="+IntToString(total)+",cnt="+IntToString(cnt));
    if(cnt == 0) return 0;
    return total/cnt;
}



void SpawnTable()
{
    switch(Random(28)+1)
    {
    case 1: CreateObject(OBJECT_TYPE_CREATURE,"enc_aberration",GetLocation(OBJECT_SELF)); break;
    case 2: CreateObject(OBJECT_TYPE_CREATURE,"enc_undead",GetLocation(OBJECT_SELF)); break;
    case 3: CreateObject(OBJECT_TYPE_CREATURE,"enc_orcs",GetLocation(OBJECT_SELF)); break;
    case 4: CreateObject(OBJECT_TYPE_CREATURE,"enc_goblins",GetLocation(OBJECT_SELF)); break;
    case 5: CreateObject(OBJECT_TYPE_CREATURE,"enc_gnolls",GetLocation(OBJECT_SELF)); break;
    case 6: CreateObject(OBJECT_TYPE_CREATURE,"enc_ogres",GetLocation(OBJECT_SELF)); break;
    case 7: CreateObject(OBJECT_TYPE_CREATURE,"enc_trolls",GetLocation(OBJECT_SELF)); break;
    case 8: CreateObject(OBJECT_TYPE_CREATURE,"enc_hobgoblins",GetLocation(OBJECT_SELF)); break;
    case 9: CreateObject(OBJECT_TYPE_CREATURE,"enc_aberrate",GetLocation(OBJECT_SELF)); break;
    case 10: CreateObject(OBJECT_TYPE_CREATURE,"enc_undead",GetLocation(OBJECT_SELF)); break;
    case 11: CreateObject(OBJECT_TYPE_CREATURE,"enc_minotaur",GetLocation(OBJECT_SELF)); break;
    case 12: CreateObject(OBJECT_TYPE_CREATURE,"enc_beasts",GetLocation(OBJECT_SELF)); break;
    case 13: CreateObject(OBJECT_TYPE_CREATURE,"enc_construct",GetLocation(OBJECT_SELF)); break;
    case 14: CreateObject(OBJECT_TYPE_CREATURE,"enc_minions",GetLocation(OBJECT_SELF)); break;
    case 15: CreateObject(OBJECT_TYPE_CREATURE,"enc_animals",GetLocation(OBJECT_SELF)); break;
    case 16: CreateObject(OBJECT_TYPE_CREATURE,"enc_bandits",GetLocation(OBJECT_SELF)); break;
    case 17: CreateObject(OBJECT_TYPE_CREATURE,"enc_brigands",GetLocation(OBJECT_SELF)); break;
    case 18: CreateObject(OBJECT_TYPE_CREATURE,"enc_bugbears",GetLocation(OBJECT_SELF)); break;
    case 19: CreateObject(OBJECT_TYPE_CREATURE,"enc_dwarf",GetLocation(OBJECT_SELF)); break;
    case 20: CreateObject(OBJECT_TYPE_CREATURE,"enc_elf",GetLocation(OBJECT_SELF)); break;
    case 21: CreateObject(OBJECT_TYPE_CREATURE,"enc_elemental",GetLocation(OBJECT_SELF)); break;
    case 22: CreateObject(OBJECT_TYPE_CREATURE,"enc_halfling",GetLocation(OBJECT_SELF)); break;
    case 23: CreateObject(OBJECT_TYPE_CREATURE,"enc_human",GetLocation(OBJECT_SELF)); break;
    case 24: CreateObject(OBJECT_TYPE_CREATURE,"enc_magicalbeast",GetLocation(OBJECT_SELF)); break;
    case 25: CreateObject(OBJECT_TYPE_CREATURE,"enc_ooze",GetLocation(OBJECT_SELF)); break;
    case 26: CreateObject(OBJECT_TYPE_CREATURE,"enc_outsider",GetLocation(OBJECT_SELF)); break;
    case 27: CreateObject(OBJECT_TYPE_CREATURE,"enc_reptilian",GetLocation(OBJECT_SELF)); break;
    case 28: CreateObject(OBJECT_TYPE_CREATURE,"enc_shapechanger",GetLocation(OBJECT_SELF)); break;
    case 29: CreateObject(OBJECT_TYPE_CREATURE,"enc_dragon",GetLocation(OBJECT_SELF)); break;
    }
}

// This handed the CR
void ENC_Spawner0(object oS, int EL, float CR, int dontlvl=0)
{
    CR    += GetLocalFloat(GetModule(),"fCR");
    if(CR <= 0.0) CR = 0.5;

    int   num = FloatToInt(CalcNumFromELCR(EL,CR));
    int   nCR = FloatToInt(CR);

    int i;
    string sTag;
    int d = GetLocalInt(GetModule(),"difficulty");
    Fill(nCR);
    int   nNum = Random(GetLocalInt(oS,"nNum"+IntToString(nCR)))+1;
    int nTemp = nCR;
    if(nNum == 0)
    {
        do
        {
            nCR = nCR - 1;
            nNum = Random(GetLocalInt(OBJECT_SELF,"nNum"+IntToString(nCR)))+1;
        }
        while(nNum == 0 && nCR > 0);

        if(nNum != 0 )
        {
            CR = IntToFloat(nCR);
            if(CR < 0.5) CR = 0.5;
            Fill(nCR);
        }

    }


    int c = 0;
    if(nNum > 0)
    {
        sTag = GetLocalString(oS,"BP"+IntToString(nCR)+"_"+IntToString(nNum));

        num = FloatToInt(CalcNumFromELCR(EL,CR));

        for(i = 0; i < num; i++)
        {
            object o = CreateObject(OBJECT_TYPE_CREATURE,sTag,GetLocation(oS));
            if(GetIsObjectValid(o))
            {
                c++;
                if(dontlvl == 1) SetLocalInt(o,"bNeverLvlUp",1);
                AssignCommand(o,ActionRandomWalk());
            }
        }
    }
    // else try spawning some other thing
    if(c== 0)
    {
        SpawnTable();
    }
    /*
    else if(d6() == 1)
    {
        ENC_Spawner0(oS,EL,CR-2.0,TRUE);
    }
    */

}


// a throwback, spawn given CR
void SpawnCR(float CR, int difMod=-4, object oS=OBJECT_SELF)
{
    int   EL = CalcEL(oS)+GetLocalInt(GetModule(),"difficulty")+difMod;
    if(EL < 0) return;
    ENC_Spawner0(oS,EL,CR);
    DestroyObject(oS);
}

// used only for generating hordes of weak canon fodders
void SpawnMinions(float CR,object oS = OBJECT_SELF)
{
    int   EL = CalcEL(oS);
    ENC_Spawner0(oS,EL,CR,1);
    DestroyObject(oS);
}


// This generates an encounter of any number and the CR
void ENC_Spawner(object oS, int EL, int dontlvl = FALSE, int bOneTime=FALSE)
{
    int    rX = Random(50000);
    float  fX = IntToFloat(rX)/1000.0;
    int    iN = FloatToInt(fX);
    int    n  = d12();
    if(iN < 15) n = 1;
    else if(iN < 25) n = 2;
    else if(iN < 30) n = 3;
    else if(iN < 35) n = 4;
    else if(iN < 40) n = 5;
    else n = Random(11)+1;

    int difficulty = GetLocalInt(GetModule(),"difficulty");
    if(difficulty == -6) n = n / 8;
    else if(difficulty == -4) n = n / 4;
    else if(difficulty == -2) n = n / 3;
    else if(difficulty == 1) n = n+n/4;
    else if(difficulty == 2) n = n+n/2;
    if(n < 1) n = 1;
    int num = n;

    float CR  = CalcCR(EL,num);
    int   nCR = FloatToInt(CR);
    if(nCR < EL/2) n = n * 2;

    //SendMessageToPC(GetFirstPC(),"EL="+IntToString(EL)+" CR="+FloatToString(CR) + " num="+IntToString(num));
    Fill(nCR);

    int     i;
    string  sTag;
    int d = GetLocalInt(GetModule(),"difficulty");
    int     nNum = Random(GetLocalInt(oS,"nNum"+IntToString(nCR)))+1;
    int     nTemp = nCR;

    int c = 0;
    int bHero=FALSE;
    if(num > 0)
    {
        sTag = GetLocalString(oS,"BP"+IntToString(nCR)+"_"+IntToString(nNum));

        for(i = 0; i < num; i++)
        {
            location l = GetLocation(oS);
            vector p = GetPositionFromLocation(l);
            float  f = GetFacing(oS);
            p.x = p.x + IntToFloat(Random(3)) * (d4() < 3? -1.0:1.0);
            p.y = p.y + IntToFloat(Random(3)) * (d4() < 3? -1.0:1.0);
            object o = CreateObject(OBJECT_TYPE_CREATURE,sTag,Location(GetArea(OBJECT_SELF),p,f));

            if(GetIsObjectValid(o))
            {
                if(nCR < EL/2) {
                    if(!bHero)
                    {
                        bHero = TRUE;
                        ExecuteScript("us_npc",o);
                    }
                }

                c++;
                if(dontlvl == 1) SetLocalInt(o,"bNeverLvlUp",1);
                AssignCommand(o,ActionRandomWalk());
            }
            else SendMessageToPC(GetFirstPC(),"Failed to spawn creature " + sTag);
        }
    }

    // else try spawning some other thing
    if(c== 0)
    {
        SpawnTable();
    }
    /*
    else if(d6() == 1)
    {
        ENC_Spawner0(oS,EL,CR-2.0,TRUE);
    }
    else if(CR > 2.0 && num == 1 && d3() == 1)
    {
        SpawnMinions(0.5,oS);
    }
    if(d6() < 4 && !bOneTime)
    {
        CR = CR - 2.0;
        if(CR >= 1.0) ENC_Spawner(oS,EL,FALSE,FALSE);
    }
    */
}


void Spawn(object oS=OBJECT_SELF)
{
    int   EL = CalcEL(oS)+GetLocalInt(GetModule(),"difficulty");
    if(EL < 0) EL = 0;

    ENC_Spawner(oS,EL);
    DestroyObject(oS);
}




// this is for tables where you have created a dummy object for the given CR.
// you let the game engine calculate the appropriate CR. I do not have this implementerd anymore at the moment
// because I severely broke some scripts and never bothered to fix them.
// originally it is how i did it, you will find some things caleld like EL Bandits which do that.
void ENC_SpawnFromCR(object oS, int EL, int dontlvl = FALSE, int once=FALSE)
{
    float CR = GetChallengeRating(oS);
    int   nCR = FloatToInt(CR);
    float N = CalcNumFromELCR(EL,CR);
    int   num = FloatToInt(N);

    Fill(nCR);

    int     i;
    string  sTag;
    int d = GetLocalInt(GetModule(),"difficulty");
    int     nNum = Random(GetLocalInt(oS,"nNum"+IntToString(nCR)))+1;
    int     nTemp = nCR;

    int c = 0;
    int bHero=FALSE;
    if(num > 0)
    {
        sTag = GetLocalString(oS,"BP"+IntToString(nCR)+"_"+IntToString(nNum));

        for(i = 0; i < num; i++)
        {
            location l = GetLocation(oS);
            vector p = GetPositionFromLocation(l);
            float  f = GetFacing(oS);
            p.x = p.x + IntToFloat(Random(3)) * (d4() < 3? -1.0:1.0);
            p.y = p.y + IntToFloat(Random(3)) * (d4() < 3? -1.0:1.0);
            object o = CreateObject(OBJECT_TYPE_CREATURE,sTag,Location(GetArea(OBJECT_SELF),p,f));

            if(GetIsObjectValid(o))
            {
                if((nCR < EL/2) && dontlvl == 0) {
                    if(!bHero)
                    {
                        bHero = TRUE;
                        ExecuteScript("us_npc",o);
                    }
                }

                c++;
                if(dontlvl == 1) SetLocalInt(o,"bNeverLvlUp",1);
                AssignCommand(o,ActionRandomWalk());
            }
            else SendMessageToPC(GetFirstPC(),"Failed to spawn creature " + sTag);
        }
    }
}


void Spawn_CR(object oS=OBJECT_SELF)
{
    int   EL = CalcEL_nearby(oS)+GetLocalInt(GetModule(),"difficulty");
    ENC_SpawnFromCR(oS,EL);
    DestroyObject(oS);
}



