void main()
{
object oChest = GetNearestObjectByTag("Locked");
 SetLockUnlockDC(oChest, 15);
  SetCustomToken(102, "15");
}
