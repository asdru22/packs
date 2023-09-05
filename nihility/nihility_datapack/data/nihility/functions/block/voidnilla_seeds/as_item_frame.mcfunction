execute unless entity @s[nbt={Facing:1b}] run function nihility:block/voidnilla_seeds/invalid_placing
execute if entity @s unless block ~ ~-0.5 ~ farmland run function nihility:block/voidnilla_seeds/invalid_placing

tag @s add nihility.setup

execute unless score temp nihility.data matches 1 run setblock ~ ~ ~ carrots[age=0]