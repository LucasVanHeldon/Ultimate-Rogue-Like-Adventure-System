void main()
{
    object oWP = GetWaypointByTag("WP_ARENA_SPAWN"); //GetObjectByTag("WP_ARENA",Random(25));
    CreateObject(OBJECT_TYPE_CREATURE,"enc_aberrations",GetLocation(oWP));
}
