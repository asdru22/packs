execute as @e[type=villager,tag=nihility.button,tag=nihility.tree] run function nihility:entity/player/tree/impl/buttons/kill
scoreboard players operation .temp nihility.data = @s nihility.id
execute as @e[type=marker,tag=nihility.tree.center] at @s if score @s nihility.id = .temp nihility.data align xyz positioned ~.25 ~-1.45 ~.25 run function nihility:entity/player/tree/impl/buttons/marker