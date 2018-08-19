from GFFFile import *

f = GFFFile()
f.fromFile(open("mazeofiuz001.git",'rb'))
print str(f)
#print f['Tile_List'][0]['Tile_Orientation']