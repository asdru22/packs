scoreboard players set t cotv.dummy 0
execute store result score height cotv.dummy run data get entity @s Pos[1]
data remove storage cotv:storage root.temp.item

execute if score height cotv.dummy matches ..0 run function cotv:block/endric_altar/interact/main 

##display

execute unless data storage cotv:storage root.temp.item unless score t cotv.dummy matches ..0 unless entity @s[tag=!cotv.block.endric_altar.has_book] if entity @p[predicate=cotv:player/sneaking,advancements={cotv:technical/player/interact_with_villager=true}] run function cotv:block/endric_altar/interact/return_items/main

#tellraw @p {"score":{"name": "t","objective": "cotv.dummy"}}
execute if score height cotv.dummy matches ..0 if entity @s[tag=cotv.block.endric_altar.has_book] if score t cotv.dummy matches 1.. run function cotv:block/endric_altar/interact/gen_text

execute if score height cotv.dummy matches ..0 if entity @s[tag=cotv.block.endric_altar.has_book] if score t cotv.dummy matches 0 run data modify storage cotv:storage root.temp.display set value '{"translate":"text.cotv.no_shards","color":"red"}'
execute if score height cotv.dummy matches 1.. run data modify storage cotv:storage root.temp.display set value '{"translate":"text.cotv.too_high","color":"red"}'
execute if entity @s[tag=!cotv.block.endric_altar.has_book] if score height cotv.dummy matches ..0 run data modify storage cotv:storage root.temp.display set value '{"translate":"text.cotv.no_book","color":"red"}'

execute at @s positioned ~ ~1 ~ as @e[type=armor_stand,limit=1,sort=nearest,tag=cotv.block.endric.altar.display,distance=..0.2] run function cotv:block/endric_altar/interact/stand

