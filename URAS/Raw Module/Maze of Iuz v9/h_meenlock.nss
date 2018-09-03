void main()
{
    int i;
    for(i = 0; i < 2+d4(); i++)
    {
        string s;
        switch(d2())
        {
        case 1: s = "zep_meenlock1"; break;
        case 2: s = "zep_meenlock2"; break;
        }
        CreateObject(OBJECT_TYPE_CREATURE,s,GetLocation(OBJECT_SELF));
    }

}
