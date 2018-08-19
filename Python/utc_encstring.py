# sort by sub-type (eg Gnoll)

import os,glob,sys
from pynwn import Creature

dir = glob.glob('X:\\Neverwinter Nights\\modules\\T1-4 The Temple of Elemental Evil - Backup 3\\*.utc')

CR = {}

RACIAL_TYPE = {}
RACIAL_TYPE["Dragon"] = 11
RACIAL_TYPE["Construct"]= 10
RACIAL_TYPE["Beast"] = 9
RACIAL_TYPE["Animal"] = 8
RACIAL_TYPE["Aberration"] = 7
RACIAL_TYPE["Dwarf"] = 0
RACIAL_TYPE["Elemental"] = 16
RACIAL_TYPE["Elf"] = 1
RACIAL_TYPE["Fey"] = 17
RACIAL_TYPE["Giant"] = 18
RACIAL_TYPE["Gnome"] = 2
RACIAL_TYPE["Half_Elf"] = 4
RACIAL_TYPE["Halfling"] = 3
RACIAL_TYPE["Human"] = 6
RACIAL_TYPE["Goblinoid"] = 12
RACIAL_TYPE["Monstrous"] = 13
RACIAL_TYPE["Orc"] = 14
RACIAL_TYPE["Reptilian"] = 15
RACIAL_TYPE["Magical_Beast"] = 19
RACIAL_TYPE["Ooze"] = 29
RACIAL_TYPE["Outsider"] = 20
RACIAL_TYPE["Shapechanger"] = 23
RACIAL_TYPE["Undead"] = 24
RACIAL_TYPE["Vermin"] = 25


# glob files in the directory 
for f in dir:
	
	try:
		i = Creature(f)
		x = int(i.cr)
		
		# check if hostile, if you want other factions modify
		if(i.faction == 1):
			if(x not in CR): CR[x] = {}
			if(i.race not in CR[x]): CR[x][i.race] = []
			CR[x][i.race].append(i.resref)
	except:
		pass

# 
sorted = {}

for cr,data in CR.items():
	for key,item in data.items():
		s =  'string sCR'+str(cr)+'="'
		for c in item:
			s = s + c + ','
		s = s[0:-1]
		s  = s + '";'
		if(cr not in sorted): sorted[cr] = {}
		if(key not in sorted[cr]): sorted[cr][key] = []
		sorted[cr][key].append(s)
		

if(len(sorted)==0):
	print("Nothing to do")
	exit()
	
# race = # of racial type (see lexicon RACIAL_TYPE eg 25 is vermin
def SelRace(race):	
	#race =25
	counts = {}
	for cr in range(60):
		counts[cr] = 0
		if(cr in sorted):
			try:
				if(len(sorted[cr][race] ) > 0):
					for x in sorted[cr][race]:
						print(x)
						counts[cr] = counts[cr]+1
			except:
				pass
	print("void Fill(int CR,object o = OBJECT_SELF)")
	print("{")
	print("switch(CR) {")
    
	for i,x in counts.items():
		if(x > 0):
			print("case " + str(i) + ': PopulateVars(o,'+str(i)+',sCR'+str(i)+');break;')
		
	print("}}")
	
do_main = """
void main()
{    
    Spawn();
}
"""

# used by NPC
def GenMinions():	
	minions = []	
	for x,y in CR[0].items():
		for a in y:
			minions.append(a)
			
	s='string sMinions="'
	for x in minions:
		s = s + x + ','
	s = s[0:-1]
	s = s + '";'
	print(s)
	
# print out scripts	
for race,key in RACIAL_TYPE.items():	
	print("// " + race)
	print('#include "encounter"')
	print('#include "nw_o0_itemmaker"')
	print('#include "x0_i0_stringlib"')

	SelRace(key)
	print(do_main)
