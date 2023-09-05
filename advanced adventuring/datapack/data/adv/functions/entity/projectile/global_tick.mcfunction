execute unless block ~ ~ ~ #adv:nocollision run function adv:entity/projectile/kill
execute if score @s adv.s.lifetime matches 0 run function adv:entity/projectile/kill

execute store result score $damage adv.data run data get entity @s item.tag.adv.damage

scoreboard players reset $kill adv.data