playsound minecraft:block.end_portal_frame.fill block @a[distance=..5] ~ ~ ~ 2 0.5

execute if entity @s[tag=cotv.block.endric_altar.has_book] if entity @p[advancements={cotv:technical/player/interact_with_villager=true},gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:book",Count:1b}}
execute store result score t cotv.dummy run data get entity @s ArmorItems[3].tag.cotv.shards
execute if score t cotv.dummy matches 1.. if entity @p[advancements={cotv:technical/player/interact_with_villager=true},gamemode=!creative] run function cotv:block/endric_altar/interact/return_items/shards

tag @s remove cotv.block.endric_altar.has_book
data remove entity @s ArmorItems[3].tag.cotv.shards
data remove entity @s HandItems[0]

data merge entity @e[type=armor_stand,limit=1,sort=nearest,tag=cotv.block.endric.altar.display,distance=..0.2] {CustomNameVisible:0b}