scoreboard players set frame nihility.data 6901002
scoreboard players operation frame nihility.data += @s nihility.void_score
execute if entity @s[scores={nihility.void_score=8}] run item replace entity @s armor.head with minecraft:structure_block{CustomModelData:6906000}
execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get frame nihility.data
scoreboard players set b nihility.data 1
execute if entity @s[scores={nihility.void_score=0}] run function nihility:entity/sculker/is_closed
