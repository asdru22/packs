scoreboard players remove @s adv.s.lifetime 1
execute store result entity @s view_range float 1 run scoreboard players get $visfix adv.data
#the big tree of projectiles
execute if entity @s[tag=adv.proj.fire_wand] run function adv:gameplay/item/magic/fire_wand/move
execute if entity @s[tag=adv.proj.katana] run function adv:gameplay/item/melee/katana/move
execute if entity @s[tag=adv.proj.flail] run function adv:gameplay/item/melee/flail/move