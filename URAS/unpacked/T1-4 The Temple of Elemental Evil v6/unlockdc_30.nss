void main()
{
object oChest = GetNearestObjectByTag("Locked");
 SetLockUnlockDC(oChest, 30);
 SetCustomToken(102, "30");
}
