execute store result score cost cotv.dummy run data get entity @s ArmorItems[3].tag.cotv.cost
execute store result score shards cotv.dummy run data get entity @s ArmorItems[3].tag.cotv.shards

data modify storage cotv:storage root.temp.merge.final set value []
execute if score shards cotv.dummy matches 1..2 run scoreboard players set enchs cotv.dummy 1
execute if score shards cotv.dummy matches 3..6 run scoreboard players set enchs cotv.dummy 2
execute if score shards cotv.dummy matches 7..11 run scoreboard players set enchs cotv.dummy 3
execute if score shards cotv.dummy matches 12..15 run scoreboard players set enchs cotv.dummy 4
execute if score shards cotv.dummy matches 16..20 run scoreboard players set enchs cotv.dummy 5

execute if score enchs cotv.dummy matches 1 run function cotv:block/endric_altar/interact/generate/e1/main

playsound minecraft:block.portal.ambient block @a[distance=..5] ~ ~ ~ 2 2
scoreboard players operation @p[advancements={cotv:technical/player/interact_with_villager=true}] cotv.void_tolerance -= cost cotv.dummy
loot replace entity @p[advancements={cotv:technical/player/interact_with_villager=true}] weapon.mainhand loot cotv:items/mystic_book
tag @s remove cotv.block.endric_altar.has_book
data remove entity @s ArmorItems[3].tag.cotv.shards
data remove entity @s HandItems[0]