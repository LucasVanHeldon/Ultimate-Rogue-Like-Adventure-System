/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Goes on creature's OnHeartbeat. Fires when not fighting or talking.
void main()
{

object oPC = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC, OBJECT_SELF, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN);

if (IsInConversation(OBJECT_SELF) || GetIsInCombat()) return;

//ClearAllActions();

ActionAttack(GetObjectByTag("NW_TARGET"));

}

