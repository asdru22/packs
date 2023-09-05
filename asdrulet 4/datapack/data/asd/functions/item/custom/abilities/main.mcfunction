scoreboard players add @s asd.timer 20
execute if entity @s[tag=asd.ability.frostspark_blade,scores={asd.timer=120..}] run function asd:item/custom/melee/frostspark_blade/reset_model