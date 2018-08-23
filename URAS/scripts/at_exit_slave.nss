void main()
{
//Slave Exits
    ActionForceMoveToObject(GetNearestObjectByTag("SlaveExit"),TRUE,2.0);
    ActionMoveAwayFromObject(GetPCSpeaker());
    DestroyObject(OBJECT_SELF,10.0);
}
