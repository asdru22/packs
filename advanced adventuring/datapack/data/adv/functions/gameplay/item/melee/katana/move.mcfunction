particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0 3 force
teleport @s ^ ^ ^1.33
function adv:entity/projectile/global_tick
execute if entity @s[scores={adv.s.lifetime=..38}] as @e[type=!#adv:not_mob,limit=1,sort=nearest,tag=!adv.ignore,nbt=!{Invulnerable:1b},nbt=!{HurtTime:10s}] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] at @s run function adv:gameplay/item/melee/katana/hit