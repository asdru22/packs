# Store player rotation
data modify storage gh:storage root.temp.rotation set from entity @s Rotation
execute positioned 0.0 0 0.0 positioned ^ ^ ^1.5 as 611910bc-eec4-4d81-9d97-8d8275a22679 run function gh:math/trig

# Get player data
scoreboard players operation $dist gh.data = $RANGE gh.data
scoreboard players operation $id gh.data = @s gh.data
data modify storage gh:storage root.temp.rotation set from entity @s Rotation
scoreboard players reset $link gh.data

function gh:item/grappling_hook/as_player/cast

scoreboard players operation $end gh.data = $RANGE gh.data
scoreboard players operation $end gh.data -= $dist gh.data

execute as @e[type=armor_stand,tag=gh.link,tag=gh.setup,sort=nearest] run function gh:item/grappling_hook/as_armor_stand/setup

execute unless score $dist gh.data matches 0 run function gh:item/grappling_hook/as_player/hit_block

# Durability Check
execute if entity @s[gamemode=!creative] run function gh:item/grappling_hook/as_item/durability