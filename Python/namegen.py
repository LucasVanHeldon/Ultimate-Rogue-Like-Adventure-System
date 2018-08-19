
f = open('undead.txt','r')
names = []
cnt = 0

for name in f.readlines():
	names.append(name.rstrip())
	cnt = cnt + 1
	
n = 0
c = 0
print("string s;")
print("switch(cnt) {")

while n < cnt:
	print "case "+str(n)+': s="'+names[n]+'";break;'
	n+=1
print("}")
print("return s;")
	
		
		