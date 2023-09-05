execute if score @s adv.using_item = @s adv.prev_using_item run function adv:item/usable/release
scoreboard players operation @s adv.prev_using_item = @s adv.using_item