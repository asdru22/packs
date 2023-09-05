import png
import os.path

def checkfile(width,height,path):
    if not(os.path.isfile(path)): createimage(width,height,path) 

def createimage(width,height,path):
    img = []
    for y in range(height):
        row = ()
        for x in range(width):
            row = row + (x, 0, y)
        img.append(row)
    with open(path, "wb") as f:
        w = png.Writer(width, height, greyscale=False)
        w.write(f, img)

r1 = "{\"texture_size\":[64,64],\"textures\":{\"0\":\"asd:transparent\",\"1\":\"asd:block/billboard/display/"
r2 = "\"},\"elements\":[{\"from\":[8,-16,-16],\"to\":[8,32,32],\"rotation\":{\"angle\":0,\"axis\":\"y\",\"origin\":[8,0,8]},\"faces\":{\"west\":{\"uv\":[0,0,16,16],\"texture\":\"#0\"}}},{\"from\":[8,-16,-16],\"to\":[8,32,32],\"rotation\":{\"angle\":0,\"axis\":\"y\",\"origin\":[8,0,8]},\"faces\":{\"west\":{\"uv\":[0,0,16,16],\"texture\":\"#1\"}}}],\"display\":{\"thirdperson_righthand\":{\"rotation\":[75,45,0],\"translation\":[0,2.5,0],\"scale\":[0.375,0.375,0.375]},\"thirdperson_lefthand\":{\"rotation\":[75,45,0],\"translation\":[0,2.5,0],\"scale\":[0.375,0.375,0.375]},\"firstperson_righthand\":{\"rotation\":[0,45,0],\"scale\":[0.4,0.4,0.4]},\"firstperson_lefthand\":{\"rotation\":[0,225,0],\"scale\":[0.4,0.4,0.4]},\"ground\":{\"translation\":[0,3,0],\"scale\":[0.25,0.25,0.25]},\"gui\":{\"rotation\":[30,225,0],\"scale\":[0.625,0.625,0.625]},\"head\":{\"rotation\":[0,180,0],\"translation\":[5,-30.09,0],\"scale\":[1.602,1.602,1.602]},\"fixed\":{\"scale\":[0.5,0.5,0.5]}}}"
g1 = "{\"texture_size\":[32,32],\"textures\":{\"0\":\"asd:block/billboard/buttons/"
g2 = "\"},\"elements\":[{\"from\":[0,0,8],\"to\":[16,16,8],\"faces\":{\"north\":{\"uv\":[16,0,0,16],\"texture\":\"#0\"},\"east\":{\"uv\":[0,0,0,8],\"texture\":\"#0\"},\"south\":{\"uv\":[0,0,16,16],\"texture\":\"#0\"},\"west\":{\"uv\":[0,0,0,8],\"texture\":\"#0\"},\"up\":{\"uv\":[8,0,0,0],\"texture\":\"#0\"},\"down\":{\"uv\":[8,0,0,0],\"texture\":\"#0\"}}}],\"display\":{\"head\":{\"rotation\":[0,90.5,0],\"translation\":[7.75,-33,0],\"scale\":[0.8,0.8,0.8]}}}"

def models(type):
	cmd = 0
	if (type == "$en"): cmd = 1
	elif (type == "$es"): cmd = 2
	elif (type == "$ew"): cmd = 3
	elif (type == "$ns"): cmd = 4
	elif (type == "$nw"): cmd = 5
	elif (type == "$sw"): cmd = 6
	elif (type == "$wns"): cmd = 7
	elif (type == "$ens"): cmd = 8
	elif (type == "$enw"): cmd = 9
	else: (cmd * 2 + 1) / 2
	return cmd

file=open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/map/in.txt", 'r')
st=file.read()
file.close
file=open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/map/in.txt", 'w')
st=st[142:]
st=st[:-6]
st=st.replace("},{", "\n")
st=st[1:]
st=st.replace("id:'{\"text\":\"", "")
st=st.replace("\"}',progress:", " ")
st=st.replace(",x:", " ")
st=st.replace(",z:", " ")
file.write(st)

file= open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/datapack/data/asd/functions/block/billboard/handling/tree.mcfunction","w")
glass= open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/minecraft/models/item/glass.json","w")
gunpowder=open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/minecraft/models/item/gunpowder.json","w")
infile = open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/map/in.txt","r")

iter = 0
gunpowder.write("{\"parent\": \"minecraft:item/generated\",\"textures\": {\"layer0\": \"minecraft:item/gunpowder\"},\"overrides\": [")
glass.write("{\"parent\": \"minecraft:block/cube_all\",\"textures\": {\"all\": \"minecraft:block/glass\"},\"overrides\": [")

Lines = infile.readlines()
for elem in Lines:
	elem=elem.split()
	type = elem[0]
	progress = elem[1]
	x = int(elem[2])
	y = int(elem[3])

	file.write("execute if score .progress asd.d matches "+progress+".. run summon armor_stand ~ ~"+str(-y/2)+" ~"+str(x/2.0))
	file.write(" {NoGravity:1b, Invulnerable : 1b, Marker : 1b, Invisible:1b, Tags : [\"asd.billboard\", \"asd.display\", \"asd.setup\"], ArmorItems : [{}, {}, {}, { id:\"minecraft:")
	if (type[0] == '$'):
		type = "connector"
		file.write("quartz\",Count : 1b,tag : {CustomModelData:" + str(6901000 + models(elem[0])) + "}}]}\n")
	else:
		checkfile(16,16,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/block/billboard/buttons/" + type + ".png")
		checkfile(160,160,"C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/textures/block/billboard/display/" + type + ".png")

		file.write("gunpowder\",Count : 1b,tag : {CustomModelData:" + str(6901000 + iter) + ",asd:{cmd:" + str(6901000 + iter) + ",click:\"" + type + "\"}}}]}\n")
		glass.write("{\"predicate\": {\"custom_model_data\": " +str( 6901000 + iter) + "},\"model\": \"asd:block/billboard/display/" + type + "\"},\n")
		gunpowder.write("{\"predicate\": {\"custom_model_data\": " + str(6901000 + iter) + "},\"model\": \"asd:block/billboard/buttons/" + type + "\"},\n")
		writer= open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/block/billboard/buttons/" + type + ".json","w")
		writer.write(g1+ type+ g2)
		writer.close()
		writer =open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/resourcepack/assets/asd/models/block/billboard/display/" + type + ".json","w")
		writer.write(r1 + type + r2)
		writer.close()
	iter += 1
file.write("\nexecute as @e[type=#asd:billboard,tag=asd.billboard,tag=asd.setup] run function asd:block/billboard/handling/setup")
glass.write("{\"predicate\": {\"custom_model_data\":"+ str(6901000+iter)+"},\"model\": \"item/diamond\"}]}")
gunpowder.write("{\"predicate\": {\"custom_model_data\":"+ str(6901000+iter)+"},\"model\": \"item/diamond\"}]}")
glass.close()
gunpowder.close()

infile.close()
outp =open("C:/Users/aln20/Documents/GitHub/Asdrulet-4b/zz_gen/map/in.txt","w")
outp.write("Done!")
outp.close()