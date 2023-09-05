execute if entity @s[scores={nihility.void_score=11}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901016
execute if entity @s[scores={nihility.void_score=10}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901017
execute if entity @s[scores={nihility.void_score=9}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901018
execute if entity @s[scores={nihility.void_score=8}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901019
execute if entity @s[scores={nihility.void_score=7}] run function nihility:entity/dechanter/land_attack

execute if entity @s[scores={nihility.void_score=6}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901019
execute if entity @s[scores={nihility.void_score=5}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901018
execute if entity @s[scores={nihility.void_score=4}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901017
execute if entity @s[scores={nihility.void_score=3}] run data modify entity @s HandItems[0].tag.CustomModelData set value 6901016
execute if entity @s[scores={nihility.void_score=2}] run function nihility:entity/dechanter/end_attack