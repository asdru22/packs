f = open("data/cbs/functions/commands/summon/interaction.mcfunction",'w')

nbt = "{width:16,height:16,Tags:[\"cbs.interaction\"]}"
r = "kill @e[type=interaction,tag=cbs.interaction]\n"
for i in range(0,19):
    for j in range(0,19):
        r+= f'summon interaction {i*8+8}.0 56 {j*8+8}.0 {nbt}\n'
        
f.write(r)