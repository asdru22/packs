execute if entity @s[type=!player] run function adv:gameplay/item/melee/flail/hit
execute if entity @s[type=player] unless score @s adv.id = $id adv.data run function adv:gameplay/item/melee/flail/hit