// sr5
int StartingConditional()
{
    int iResult = FALSE;
    object oUser = GetPCSpeaker();
    object oCleric=GetLocalObject(oUser,"CLERIC");
    int iLevel=GetLevelByClass(CLASS_TYPE_CLERIC, oCleric);
    if (iLevel >= 9 && iLevel < 13)
    iResult = TRUE;
    return iResult;
}
