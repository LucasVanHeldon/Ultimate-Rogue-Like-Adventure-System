void main()
{
object oChest = GetNearestObjectByTag("Locked");
 SetLockUnlockDC(oChest, 20);
  SetCustomToken(102, "20");
}
