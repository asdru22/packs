execute if entity @s[scores={nihility.void_score=8}] run playsound minecraft:entity.shulker.open neutral @a
scoreboard players set frame nihility.data 6901011
scoreboard players operation frame nihility.data -= @s nihility.void_score
execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get frame nihility.data
scoreboard players set b nihility.data 1
execute if entity @s[scores={nihility.void_score=0}] run function nihility:entity/sculker/is_open