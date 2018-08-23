void main()
{
    int i;
    for(i = 0; i < d10(2); i++) CreateObject(OBJECT_TYPE_CREATURE, d4() < 3? "zep_myconidsp001":"zep_myconidspro", GetLocation(OBJECT_SELF));
    for(i = 0; i < d4(2); i++)CreateObject(OBJECT_TYPE_CREATURE, d4() < 3? "zep_myconid	:zep_myconid001", GetLocation(OBJECT_SELF));
}
