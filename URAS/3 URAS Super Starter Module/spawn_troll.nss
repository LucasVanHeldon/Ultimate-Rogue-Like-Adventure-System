void main()
{
location lLoc = GetLocation(GetObjectByTag("SPAWN_POINT"));
CreateObject(OBJECT_TYPE_CREATURE, "nw_troll",lLoc);
ActionSpeakString("You have spawned a Troll.");
}
