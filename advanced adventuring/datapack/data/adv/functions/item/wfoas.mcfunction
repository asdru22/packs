execute if predicate adv:item/magic if score @s adv.reload.magic matches 0 run function adv:gameplay/item/magic/main/init
execute if predicate adv:item/melee if score @s adv.reload.melee matches 0 run function adv:gameplay/item/melee/throwable/init
#Ranged Items

scoreboard players reset @s adv.use_wofas