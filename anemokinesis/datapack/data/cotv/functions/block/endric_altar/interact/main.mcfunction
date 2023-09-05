execute store result score t cotv.dummy run data get entity @s ArmorItems[3].tag.cotv.shards
data modify storage cotv:storage root.temp.item set from entity @p[advancements={cotv:technical/player/interact_with_villager=true}] SelectedItem

execute if entity @s[tag=!cotv.block.endric_altar.has_book] if data storage cotv:storage root.temp.item{id:"minecraft:book"} run function cotv:block/endric_altar/interact/add_book

execute if data storage cotv:storage root.temp.item.tag.smithed{id:"cotv:shadowblight_shard"} unless data entity @s ArmorItems[3].tag.cotv{shards:20} run function cotv:block/endric_altar/interact/add_shard

## math stuff
scoreboard players operation cost cotv.dummy = height cotv.dummy
scoreboard players operation cost cotv.dummy /= const.-10 cotv.dummy
scoreboard players add cost cotv.dummy 1
scoreboard players operation cost cotv.dummy *= const.6 cotv.dummy
scoreboard players operation cost cotv.dummy *= t cotv.dummy
execute store result entity @s ArmorItems[3].tag.cotv.cost int 1 run scoreboard players get cost cotv.dummy