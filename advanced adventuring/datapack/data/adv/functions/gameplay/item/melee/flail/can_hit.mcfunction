particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0 3 force
teleport @s ^ ^ ^0.77
function adv:entity/projectile/thrown

scoreboard players reset $has_hit adv.data
scoreboard players operation $id adv.data = @s adv.id

execute as @e[type=!#adv:not_mob,limit=1,sort=nearest,tag=!adv.ignore,nbt=!{Invulnerable:1b},nbt=!{HurtTime:10s}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] at @s run function adv:gameplay/item/melee/flail/hit_check
execute if score $has_hit adv.data matches 1 run tag @s add adv.proj.hit