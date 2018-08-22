void main()
{
object oChest = GetNearestObjectByTag("Locked");
 SetLockUnlockDC(oChest, 5);
 SetCustomToken(102, "5");
}
