tag @s add nihility.button.setup
scoreboard players operation @s nihility.id = @p nihility.id
effect give @s invisibility 1000000 10 true
execute if score .override nihility.data matches 1 run function nihility:entity/player/tree/impl/buttons/move/main