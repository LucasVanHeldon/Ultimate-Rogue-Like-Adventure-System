/*   Script generated by
Lilac Soul's NWN Script Generator, v. 2.1

For download info, please visit:
http://nwvault.ign.com/View.php?view=Other.Detail&id=4683&id=625    */

//Put this OnClick or OnFailToOpen
void main()
{

object oPC = GetClickingObject();

if (!GetIsPC(oPC)) return;

ActionSpeakString("This long dark tunnel leads down into the underdark. Not a place you want to go.");

}
