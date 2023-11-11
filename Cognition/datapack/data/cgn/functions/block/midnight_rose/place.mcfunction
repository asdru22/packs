setblock ~ ~ ~ melon_stem[age=0]
summon interaction ~ ~ ~ {width:0.5f,height:0.2f,Tags:["smithed.block","smithed.strict","cgn.midnight_rose","cgn.tick","cgn.block","srn.interaction","cgn.setup"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4375f,0.f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:880001}}}]}

execute as @e[type=interaction,tag=cgn.setup,limit=1,sort=nearest,distance=..1] run function cgn:block/midnight_rose/setup

playsound minecraft:block.pink_petals.place block @a[distance=..16]