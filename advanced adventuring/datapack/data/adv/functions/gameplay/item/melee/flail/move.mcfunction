execute unless block ~ ~ ~ #adv:airlike run tag @s add adv.proj.hit
execute if entity @s[tag=!adv.proj.hit] run function adv:gameplay/item/melee/flail/can_hit
execute if entity @s[tag=adv.proj.hit] run function adv:gameplay/item/melee/flail/return_to_player
execute if score @s adv.s.lifetime matches ..0 positioned ^ ^ ^-.5 run function adv:gameplay/item/melee/flail/drop