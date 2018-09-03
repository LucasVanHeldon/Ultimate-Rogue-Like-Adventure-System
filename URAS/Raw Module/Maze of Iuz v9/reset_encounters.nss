void ResetEncounters()
{
    object oArea = GetFirstArea();
    while(GetIsObjectValid(oArea))
    {
        object oE = GetFirstObjectInArea(oArea);
        while(GetIsObjectValid(oE))
        {
            if(GetObjectType(oE) == OBJECT_TYPE_ENCOUNTER)
            {
                SetEncounterActive(TRUE,oE);
            }
            oE = GetNextObjectInArea(oArea);
        }
        oArea = GetNextArea();
    }
}

void main()
{
    ResetEncounters();
}
