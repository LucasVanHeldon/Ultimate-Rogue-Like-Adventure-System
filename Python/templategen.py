# Template Generator Script

# NPC Generator
# classes, packages, minions, henchmen
# give spellbook, items, rings, belts, armor, enhance items and equip them
def GiveSpellbook():
	print("bHasSpellBook=TRUE;")
	
	
	
def StrBonus(str):
	template = "eEffect = EffectAbilityIncrease(ABILITY_STRENGTH,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (str))

def DexBonus(str):
	template = "eEffect = EffectAbilityIncrease(ABILITY_DEXTERITY,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (str))	
	
def ConBonus(str):
	template = "eEffect = EffectAbilityIncrease(ABILITY_CONSTITUTION,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (str))	

def WisBonus(str):
	template = "eEffect = EffectAbilityIncrease(ABILITY_WISDOM,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (str))
	
def IntBonus(str):
	template = "eEffect = EffectAbilityIncrease(ABILITY_INTELLIGENCE,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (str))
	
def ChaBonus(str):
	template = "eEffect = EffectAbilityIncrease(ABILITY_CHARISMA,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (str))	
	
def TempHP(n):
	if( n == 0): return
	template = "eEffect = EffectTemporaryHitpoints(d12(%d));\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (n))

def AcidResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_ACID,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def FireResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_FIRE,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def ColdResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_COLD,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def BludgeonResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_BLUDGEONING,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def ElectricalResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_ELECTRICAL,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def MagicalResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_MAGICAL,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))
	
def NegativeResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_NEGATIVE,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def PierceResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_PIERCING,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def SlashResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_SLASHING,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))

def SonicResistance(amt):
	template="eEffect = EffectDamageResistance(DAMAGE_TYPE_SONIC,%d);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print(template % (amt))
		    
def NaturalArmorBonus(n):
	template = "eEffect = EffectACIncrease(%d,AC_NATURAL_BONUS);\nApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);"
	print (template % (n) )
	
def PoisonImmunity():
	template = """
eEffect = EffectImmunity(IMMUNITY_TYPE_POISON);
ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
"""
	print (template)

def SpellResistance(sr,max):
	template = """
int sr = %d + nHD; 
if(sr > %d) sr = %d; 
eEffect = EffectSpellResistanceIncrease(sr);
ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
"""
	print (template % (sr,max,max) )

def Darkvision():
	template = "ip = ItemPropertyDarkvision(); IPSafeAddItemProperty(oSkin,ip);"
	print (template)
		
def CastSpell(spell,lvl,n):
	template = 'if(GetHitDice(OBJECT_SELF) >= %d) SetLocalInt(oSkin,"bNum%s",%d);'
	print (template % (lvl,spell,n))

def GiveFeat(feat,lvl):
	template = """
if(GetHitDice(OBJECT_SELF) > %d) 
{
	ip = ItemPropertyBonusFeat(%s);
	IPSafeAddItemProperty(oSkin,ip);
}
	"""
	print (template % (lvl,feat))
	
def DamageReduction(a,b,amt):
	template ="""
if( nHD >= %d && nHD <= %d)
{
	int nDR = nHD/5+1;	
	if(nDR == 6) nDR = nDR+1;
	int nAmt = %d;
	eEffect = EffectDamageReduction(nAmt, nHD);
	ApplyEffectToObject(DURATION_TYPE_INSTANT,eEffect,OBJECT_SELF);
}
	"""
	print ( template % (a,b,amt) )
	
def SetName(name):
	print('SetName(OBJECT_SELF,"%s"+ GetName(OBJECT_SELF));' % (name))

def NaturalWeaponEnhance():
	template = """
 ip = ItemPropertyEnhancementBonus(nEnhance);
oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_L);
IPSafeAddItemProperty(oCW,ip);
oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_R);
IPSafeAddItemProperty(oCW,ip);
oCW = GetItemInSlot(INVENTORY_SLOT_CWEAPON_B);
IPSafeAddItemProperty(oCW,ip);
"""
	print ( template)




def ACBonus(bonus):
	template = "ip = ItemPropertyACBonus(%d); IPSafeAddItemProperty(oSkin,ip);"
	print(template % (bonus))
	

ALIGNMENT_CHAOTIC=3
ALIGNMENT_EVIL=5
ALIGNMENT_GOOD=4
ALIGNMENT_LAWFUL=2
ALIGNMENT_NEUTRAL=1

def ACBonusVsAlign(bonus,align):
	template = "ip = ItemPropertyACBonusVsAlign(%d,%d); IPSafeAddItemProperty(oSkin,ip);"
	print(template % (align,bonus))

DAMAGETYPE_ACID=6
DAMAGETYPE_BLUDGEON=0
DAMAGETYPE_COLD=7
DAMAGETYPE_DIVINE=8
DAMAGETYPE_ELECTRICAL=9
DAMAGETYPE_FIRE=10
DAMAGETYPE_MAGICAL=5
DAMAGETYPE_NEGATIVE=11
DAMAGETYPE_PHYSICAL=4
DAMAGETYPE_PIERCING=1
DAMAGETYPE_POSITIVE=12
DAMAGETYPE_SLASHING=2
DAMAGETYPE_SONIC=13
DAMAGETYPE_SUBDUAL=3

def ACBonusVsDmgType(dmg_type,bonus):
	template = "ip = ItemPropertyACBonusVsDmgType(%d,%d); IPSafeAddItemProperty(oSkin,ip);"
	print(template % (dmg_type,bonus))

RT_ABERRATION=7
RT_ANIMAL=8
RT_BEAST=9
RT_CONSTRUCT=10
RT_DRAGON=11
RT_DWARF=0
RT_ELEMENTAL=16
RT_ELF=1
RT_FEY=17
RT_GIANT=18
RT_GNOME=2
RT_HALFELF=4
RT_HALFLING=3
RT_HALFORC=5
RT_HUMAN=6
RT_GOBLINOID=12
RT_MONSTROUS=13
RT_ORC=14
RT_REPTILIAN=15
RT_MAGICAL_BEAST=19
RT_OUTSIDER=20
RT_SHAPECHANGER=23
RT_UNDEAD=24
RT_VERMIN=25

def ACBonusVsRace(race,bonus):
	template = "ip = ItemPropertyACBonusVsDmgType(%d,%d); IPSafeAddItemProperty(oSkin,ip);"
	print(template % (dmg_type,bonus))

#print("effect eEffect;\nint nHD = GetHitDice(OBJECT_SELF);")

print ("effect eEffect;")
print ("itemproperty ip;")
print ("object oCW;")
print ("int nHD = GetHitDice(OBJECT_SELF);")
print ('SetLocalString(OBJECT_SELF,"X2_SPECIAL_COMBAT_AI_SCRIPT","x2_inc_template");')


def Celestial():
	StrBonus(4)
	DexBonus(2)
	ConBonus(4)
	IntBonus(2)
	WisBonus(4)
	ChaBonus(4)


	NaturalArmorBonus(5)

	AcidResistance(10)
	ColdResistance(10)
	ElectricalResistance(10)
	SpellResistance(10,32)

	DamageReduction(0,11,5)
	DamageReduction(12,40,10)

	Darkvision()
	CastSpell("SPELL_BLESS",1,1)
	CastSpell("SPELL_LIGHT",1,-1)
	CastSpell("SPELL_PROTECTION_FROM_EVIL",2,3)
	CastSpell("SPELL_AID",3,1)
	CastSpell("SPELL_CURE_SERIOUS_WOUNDS",5,1)
	CastSpell("SPELL_REMOVE_DISEASE",6,1)
	CastSpell("SPELL_MASS_CHARM_MONSTER",15,1)
	CastSpell("SPELL_SUMMON_CREATURE_IX",17,1)
	CastSpell("SPELL_RESSURECTION",19,1)
	GiveFeat("FEAT_SMITE_EVIL",1)

	SetName("(Half-Celestial) ")
	
def HalfFiend():
	StrBonus(4)
	DexBonus(4)
	ConBonus(2)
	IntBonus(4)
	ChaBonus(2)
	NaturalArmorBonus(5)

	AcidResistance(10)
	ColdResistance(10)
	ElectricalResistance(10)
	SpellResistance(10,32)

	DamageReduction(0,11,5)
	DamageReduction(12,40,10)
	PoisonImmunity()
	
	Darkvision()
	
	CastSpell("SPELL_DARKNESS",1,3)
	CastSpell("SPELL_BANE",3,1)
	CastSpell("SPELL_DOOM",3,1)
	CastSpell("SPELL_POISON",7,1)	
	CastSpell("SPELL_CONTAGION",8,1)
	CastSpell("SPELL_CIRCLE_OF_DOOM",9,1)
	CastSpell("SPELL_UNHOLY_AURA",11,1)
	CastSpell("SPELL_MASS_CHARM_MONSTER",13,1)
	CastSpell("SPELL_HORRID_WILTING",15,1)
	CastSpell("SPELL_SUMMON_CREATURE_IX",17,1)
	CastSpell("SPELL_DESTRUCTION",19,1)
	
	GiveFeat("FEAT_SMITE_GOOD",1)
	
	SetName("(Half-Fiend) ")


	
def Blooded():
	StrBonus(4)
	ConBonus(4)
		
	NaturalArmorBonus(2)
	CastSpell("SPELL_WAR_CRY",1,3)
	
	SetName("(Blooded)")
	
Blooded()