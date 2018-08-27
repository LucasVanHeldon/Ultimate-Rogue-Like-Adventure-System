void main()
{
    int i;
    for(i = 0; i < d6(); i++)
        CreateObject(OBJECT_TYPE_CREATURE,"nw_ratdire001",GetLocation(OBJECT_SELF));
}
