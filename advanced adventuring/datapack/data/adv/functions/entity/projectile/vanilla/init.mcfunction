execute store result score $damage adv.data run data get entity @s damage 10

execute on origin run function adv:entity/projectile/vanilla/as_player

execute if score $arch_hat adv.data matches 1 run function adv:gameplay/item/armor/archer_hat

tag @s add adv.setup
data merge entity @s {crit:0b}
execute store result entity @s damage double 0.1 run scoreboard players get $damage adv.data

execute if score $debug adv.data matches 1 run tellraw @a [{"text":"ranged Damage: "},{"score":{"name":"$damage","objective":"adv.data"}}]