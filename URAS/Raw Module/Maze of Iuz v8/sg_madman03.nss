/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnEnter
void main()
{

object oPC = GetEnteringObject();

if (!GetIsPC(oPC)) return;

int DoOnce = GetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF));

if (DoOnce==TRUE) return;

SetLocalInt(OBJECT_SELF, GetTag(OBJECT_SELF), TRUE);

int nInt;
nInt=GetLocalInt(GetArea(oPC), "madman");

if (!(nInt <= 2))
   return;

int nAC = GetAC(oPC);

int nRoll = d20() + 16 + 3;

if (nRoll > nAC)
    {

     FloatingTextStringOnCreature("Out of nowhere a knife flies your way and pierces you!!!", oPC);

     ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(d4(2), DAMAGE_TYPE_PIERCING, DAMAGE_POWER_NORMAL), oPC);

    }

else
    {

    FloatingTextStringOnCreature("Out of nowhere a knife whizzes by, barely missing you!!!", oPC);

    }
}