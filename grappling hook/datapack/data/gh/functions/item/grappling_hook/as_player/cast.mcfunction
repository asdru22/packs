summon armor_stand ~ ~-1.8 ~ {Marker:1b,Invisible:1b,Tags:["gh.link","gh.setup"],Pose:{Head:[0.0f,0.0f,0.01f]},ArmorItems:[{},{},{},{id:"minecraft:shield",Count:1b,tag:{CustomModelData:6900002}}]}
scoreboard players remove $dist gh.data 1
execute if score $dist gh.data matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #gh:passable run function gh:item/grappling_hook/as_player/cast