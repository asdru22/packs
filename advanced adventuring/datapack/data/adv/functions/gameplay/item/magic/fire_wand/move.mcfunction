execute if score @s adv.s.lifetime matches 25..38 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute if score @s adv.s.lifetime matches ..25 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute if score @s adv.s.lifetime matches 20.. run teleport @s ^ ^ ^1.5
execute if score @s adv.s.lifetime matches 5..10 run teleport @s ^ ^ ^1.2
execute if score @s adv.s.lifetime matches 10..15 run teleport @s ^ ^ ^0.9
execute if score @s adv.s.lifetime matches 15..20 run teleport @s ^ ^ ^0.6
execute if score @s adv.s.lifetime matches ..5 run teleport @s ^ ^ ^0.3

execute if score @s adv.s.lifetime matches ..30 store result entity @s item.tag.adv.damage int 0.95 run data get entity @s item.tag.adv.damage

function adv:entity/projectile/global_tick

execute if entity @s[scores={adv.s.lifetime=..38}] as @e[type=!#adv:not_mob,limit=1,sort=nearest,tag=!adv.ignore,nbt=!{Invulnerable:1b},nbt=!{HurtTime:10s}] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] at @s run function adv:gameplay/item/magic/fire_wand/hit

execute if score $kill adv.data matches 1 run function adv:entity/projectile/kill