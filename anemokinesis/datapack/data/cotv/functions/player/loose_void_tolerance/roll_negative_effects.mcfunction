playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 2 2
tag @s add cotv.void_tolerance.debuff
tag @s remove cotv.void_tolerance.debuff.shulker
tag @s remove cotv.void_tolerance.debuff.eye
tag @s remove cotv.void_tolerance.debuff.dragon
tag @s remove cotv.void_tolerance.debuff.chorus
execute store result score rng cotv.dummy run loot spawn ~ ~ ~ loot cotv:technical/roll/1_4
execute if score rng cotv.dummy matches 1 run tag @s add cotv.void_tolerance.debuff.shulker
execute if score rng cotv.dummy matches 2 run tag @s add cotv.void_tolerance.debuff.eye
execute if score rng cotv.dummy matches 3 run tag @s add cotv.void_tolerance.debuff.dragon
execute if score rng cotv.dummy matches 4 run tag @s add cotv.void_tolerance.debuff.chorus