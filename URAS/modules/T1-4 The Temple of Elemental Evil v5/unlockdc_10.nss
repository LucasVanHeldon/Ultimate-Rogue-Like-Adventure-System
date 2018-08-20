void main()
{
object oChest = GetNearestObjectByTag("Locked");
 SetLockUnlockDC(oChest, 10);
 SetCustomToken(102, "10");
}
