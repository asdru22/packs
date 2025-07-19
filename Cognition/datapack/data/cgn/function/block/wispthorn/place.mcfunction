setblock ~ ~ ~ melon_stem[age=0]

summon interaction ~ ~ ~ {response:1b,width:0.5f,height:0.2f,Tags:["smithed.block","cgn.wispthorn","cgn.tick","cgn.block","cgn.interaction","cgn.setup"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.2375f,0.f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"cgn:block/wispthorn","minecraft:custom_model_data":1}}}]}

playsound minecraft:block.pink_petals.place block @a[distance=..16]