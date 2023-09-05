execute store result score $x adv.data run data get entity @s Motion[0] 100
execute store result score $y adv.data run data get entity @s Motion[1] 100
execute store result score $z adv.data run data get entity @s Motion[2] 100

scoreboard players operation $x adv.data *= 25 adv.data
scoreboard players operation $y adv.data *= 25 adv.data
scoreboard players operation $z adv.data *= 25 adv.data

execute store result entity @s Motion[0] double 0.001 run scoreboard players get $x adv.data
execute store result entity @s Motion[1] double 0.001 run scoreboard players get $y adv.data
execute store result entity @s Motion[2] double 0.001 run scoreboard players get $z adv.data