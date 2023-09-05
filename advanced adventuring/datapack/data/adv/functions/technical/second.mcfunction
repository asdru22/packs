execute as @e[type=!#adv:not_mob] at @s run function adv:entity/second
execute as @a at @s run function adv:entity/player/second

schedule function adv:technical/second 1s replace