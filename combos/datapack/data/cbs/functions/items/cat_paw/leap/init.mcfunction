scoreboard players set $strength delta.api.launch 30000
execute rotated ~ -70 run function delta:api/launch_looking
particle minecraft:cloud ~ ~1 ~ 0.5 0 0.5 0.01 10
tag @s add cbs.combo_effect
scoreboard players set @s cbs.combo.leap 1