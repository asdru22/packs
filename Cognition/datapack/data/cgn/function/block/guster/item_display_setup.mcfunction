data merge entity @s {Tags:["cgn.tick","cgn.block","smithed.block","cgn.guster","cgn.prevents_hoppers",cgn.newly_placed_update_light],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"cgn:block/guster"}}}

function cgn:block/vanilla/hopper_updating/fill

execute if block ~ ~ ~ furnace[facing=north] run data modify entity @s Rotation[0] set value -180f
execute if block ~ ~ ~ furnace[facing=east] run data modify entity @s Rotation[0] set value -90f
execute if block ~ ~ ~ furnace[facing=west] run data modify entity @s Rotation[0] set value 90f
execute if block ~ ~ ~ furnace[facing=south] run data modify entity @s Rotation[0] set value 0f