void main()
{
object oChest = GetNearestObjectByTag("Locked");
 SetLockUnlockDC(oChest, 50);
 SetCustomToken(102, "50");
}
