execute if entity @s[advancements={asd:technical/block/billboard/interact={up=true}}] run scoreboard players set .move asd.d 1
execute if entity @s[advancements={asd:technical/block/billboard/interact={down=true}}] run scoreboard players set .move asd.d 2
execute if entity @s[advancements={asd:technical/block/billboard/interact={left=true}}] run scoreboard players set .move asd.d 3
execute if entity @s[advancements={asd:technical/block/billboard/interact={right=true}}] run scoreboard players set .move asd.d 4
scoreboard players operation .temp asd.d = @s asd.id

scoreboard players reset .sneak asd.d
execute if predicate asd:player/sneaking run scoreboard players set .sneak asd.d 1

execute store success score .flip asd.d if entity @s[tag=asd.billboard_flip]
execute if entity @s[advancements={asd:technical/block/billboard/interact={click=true}}] run function asd:block/billboard/impl/clicking/main
execute if score .move asd.d matches 1..4 run function asd:block/billboard/impl/buttons/check

stopsound @s * minecraft:entity.player.attack.strong
stopsound @s * minecraft:entity.player.attack.crit

advancement revoke @s only asd:technical/block/billboard/interact