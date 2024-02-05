setblock ~ ~ ~ melon_stem[age=0]
summon interaction ~ ~ ~ {width:0.5f,height:0.2f,Tags:["smithed.block","smithed.strict","dsl.mirage_blossom","dsl.tick","dsl.block","dsl.interaction","dsl.setup"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4375f,0.f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:recovery_compass",Count:1b,tag:{CustomModelData:882001}}}]}

execute as @e[type=interaction,tag=dsl.setup,limit=1,sort=nearest,distance=..1] run function dsl:block/mirage_blossom/setup

playsound minecraft:block.pink_petals.place block @a[distance=..16]