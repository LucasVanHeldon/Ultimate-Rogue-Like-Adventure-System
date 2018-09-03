void main()
{
    int i;
    for(i = 0; i < d4(); i++) CreateObject(OBJECT_TYPE_CREATURE,d4()<3?"nw_bugbeara":"nw_bugbearb",GetLocation(OBJECT_SELF));
}
