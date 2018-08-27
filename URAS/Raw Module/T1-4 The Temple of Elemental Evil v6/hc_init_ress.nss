// sr5
int StartingConditional()
{
    int iResult = FALSE;
    object oUser = GetPCSpeaker();
    object oCleric=GetLocalObject(oUser,"CLERIC");
    int iLevel=GetLevelByClass(CLASS_TYPE_CLERIC, oCleric);
    if (iLevel >= 13 && iLevel < 17)
    iResult = TRUE;
    return iResult;
}
