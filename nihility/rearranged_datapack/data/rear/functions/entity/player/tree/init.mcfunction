execute if entity @s[advancements={nihility:technical/player/button={up=true}}] run scoreboard players set .move nihility.data 1
execute if entity @s[advancements={nihility:technical/player/button={down=true}}] run scoreboard players set .move nihility.data 2
execute if entity @s[advancements={nihility:technical/player/button={left=true}}] run scoreboard players set .move nihility.data 3
execute if entity @s[advancements={nihility:technical/player/button={right=true}}] run scoreboard players set .move nihility.data 4

execute if entity @s[advancements={nihility:technical/player/button={start=true}}] run scoreboard players set .move nihility.data 5

execute if score .move nihility.data matches 1..4 run function nihility:entity/player/tree/impl/buttons/move

advancement revoke @s only nihility:technical/player/button 