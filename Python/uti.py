# Generate Trash scripts for items

import os,glob,sys
from pynwn import Item


base_types = {}
base_types[19] = "Amulet"
base_types[16] = "Armor"
base_types[20] = "Arrow"
base_types[3] = "Bastard Sword"
base_types[2] = "Battle Axe"
base_types[21] = "Belt"
base_types[25] = "Boltr"
base_types[74] = "Book"
base_types[26] = "Boots"
base_types[78] = "Bracer"
base_types[27] = "Bullet"
base_types[28] = "Club"
base_types[80] = "Cloak"
base_types[22] = "Dagger"
base_types[31] = "Dart"
base_types[32] = "Dire Mace"
base_types[33] = "Double Aze"
base_types[108] = "Dwarven Axe"
base_types[77] = "Gem"
base_types[36] = "Gloves"
base_types[18] = "Great Axe"
base_types[13] = "Greatsword"
base_types[10] = "Halberd"
base_types[38] = "Handaxe"
base_types[6] = "Heavy Crossbow"
base_types[35] = "Heavy Flail"
base_types[17] = "Helmet"
base_types[40] = "Kama"
base_types[41] = "Katana"
base_types[42] = "Kukri"
base_types[7] = "Light Crossbow"
base_types[4] = "Light Flail"
base_types[37] = "Light Hammer"
base_types[9] = "Light Mace"
base_types[8] = "Longbow"
base_types[1] = "Longsword"
base_types[44] = "Magic Rod"
base_types[45] = "Magic Staff"
base_types[46] = "Magic Wand"
base_types[47] = "Morningstar"
base_types[50] = "Quarterstaff"
base_types[51] = "Rapier"
base_types[52] = "Ring"
base_types[53] = "Scrimitar"
base_types[55] = "Scythe"
base_types[11] = "Shortbow"
base_types[58] = "Spear"
base_types[0] = "Short Sword"
base_types[59] = "Shuriken"
base_types[60] = "Sickle"
base_types[61] = "Sling"
base_types[14] = "Small Shield"
base_types[75] = "Scroll"
base_types[63] = "Throwing Axe"
base_types[15] = "Torch"
base_types[57] = "Tower Shield"
base_types[95] = "Trident"
base_types[12] = "Two Bladed Sword"
base_types[5] = "Warhammer"
base_types[111] = "Whip"

s_strings = {}
for i in base_types:
	s_strings[i] = {}
	for j in range(40):
		s_strings[i][j] = []
		
	
	
# calculate level from items 2da 
def GetLevel(cost):
	if(cost <= 1000):return 1
	if(cost <= 1500):return 2
	if(cost <= 2500):return 3
	if(cost <= 3500):return 4
	if(cost <= 5000):return 5
	if(cost <= 6500):return 6
	if(cost <= 9000):return 7
	if(cost <= 12000):return 8
	if(cost <= 15000):return 9
	if(cost <= 19500):return 10
	if(cost <= 25000):return 11
	if(cost <= 30000):return 12
	if(cost <= 35000):return 13
	if(cost <= 40000):return 14
	if(cost <= 50000):return 15
	if(cost <= 65000):return 16
	if(cost <= 75000):return 17
	if(cost <= 90000):return 18	
	if(cost <= 110000):return 19
	if(cost <= 130000):return 20
	if(cost <= 250000):return 20
	if(cost <= 500000):return 21
	if(cost <= 750000):return 22
	if(cost <= 1000000):return 23
	if(cost <= 1200000):return 24
	if(cost <= 1400000):return 25
	if(cost <= 1600000):return 26
	if(cost <= 1800000):return 27
	if(cost <= 2000000):return 28
	if(cost <= 2200000):return 29
	if(cost <= 2400000):return 30
	if(cost <= 2600000):return 31
	if(cost <= 2800000):return 32
	if(cost <= 3000000):return 33
	if(cost <= 3200000):return 34
	if(cost <= 3400000):return 35
	if(cost <= 3600000):return 36
	if(cost <= 3800000):return 37
	if(cost <= 4000000):return 38
	if(cost <= 4200000):return 39
	return 40
	

# glob the dir and generate the database
dir = glob.glob('X:\\Neverwinter Nights\\modules\\3e Temple of Elemental Evil\\*.uti')
for f in dir:
	
	try:
		i = Item(f)
			
		#print(i.base_type,i.resref,i.gff['Cost'])
		if(i.base_type in base_types): 			
			s_strings[i.base_type][GetLevel(i.gff['Cost'])].append(i.resref)
	except:		
		pass

# generate the trash scripts
cs = 0	
levels = {}
for j in base_types:
	if(len(s_strings[j]) > 0):		
		for i in range(40):				
			if(i not in levels): levels[i] = []
			for x in s_strings[j][i]:
				levels[i].append(x)
				
				
for i in range(40):
	print("string TrashLevel"+str(i)+"()")
	print("{")
	cs = 0
	print("	string s;");
	print("	switch(Random("+str(len(levels[i]))+"))")
	print("{")
	for x in levels[i]:
		print("		case ",cs,': s="'+x,'";')
		cs = cs + 1
	print("	}")	
	print("	return s; ")
	print("}")
	
	