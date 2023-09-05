data modify storage asd:data root.temp.loot.tag.asd set from block ~ ~ ~ Items[0].tag.asd
execute unless data storage asd:data root.temp.loot.tag.asd.ids run data modify storage asd:data root.temp.loot.tag.asd.ids set value []
execute if data storage asd:data root.temp.loot.tag.asd.ids run data modify storage asd:data root.temp.loot.tag.asd.ids2 set from storage asd:data root.temp.loot.tag.asd.ids
scoreboard players set .found asd.d 0
function reg:blocks/chests/loop
execute if score .found asd.d matches 0 run function reg:blocks/chests/found
scoreboard players set .range asd.d 0
setblock ~ ~ ~ air
execute unless block ~ ~1 ~ water run setblock ~ ~ ~ chest{CustomName:'"Loot"',Items:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:6900000}}]}
execute if block ~ ~1 ~ water run setblock ~ ~ ~ chest[waterlogged=true]{CustomName:'"Loot"',Items:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:6900000}}]}
data modify block ~ ~ ~ Items[0].tag.asd set from storage asd:data root.temp.loot.tag.asd