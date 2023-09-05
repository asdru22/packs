# Heals the player based on $heal adv.data
execute store result score @s adv.data run attribute @s minecraft:generic.max_health get 10
execute store result score $health adv.data run data get entity @s Health 10
execute unless score @s adv.data = $health adv.data run function adv:entity/player/heal/heal