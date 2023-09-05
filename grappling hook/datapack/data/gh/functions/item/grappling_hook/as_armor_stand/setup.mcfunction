execute if score $dist gh.data matches 0 run kill @s
scoreboard players operation @s gh.data = $id gh.data
execute store result score @s gh.link run scoreboard players add $link gh.data 1
tag @s remove gh.setup
data modify entity @s Pose.Head[1] set from storage gh:storage root.temp.rotation[0]
data modify entity @s Pose.Head[0] set from storage gh:storage root.temp.rotation[1]

execute if score @s gh.link = $end gh.data run item replace entity @s armor.head with shield{CustomModelData:6900001}