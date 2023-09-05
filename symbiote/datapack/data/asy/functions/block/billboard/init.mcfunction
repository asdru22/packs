execute if entity @s[advancements={asy:technical/block/billboard/interact={up=true}}] run scoreboard players set .move asy.data 1
execute if entity @s[advancements={asy:technical/block/billboard/interact={down=true}}] run scoreboard players set .move asy.data 2
execute if entity @s[advancements={asy:technical/block/billboard/interact={left=true}}] run scoreboard players set .move asy.data 3
execute if entity @s[advancements={asy:technical/block/billboard/interact={right=true}}] run scoreboard players set .move asy.data 4

scoreboard players operation .temp asy.data = @s asy.id
scoreboard players operation .progress asy.data = @s asy.progress

scoreboard players reset .sneak asy.data
execute if predicate asy:player/sneaking run scoreboard players set .sneak asy.data 1

execute store success score .flip asy.data if entity @s[tag=asy.billboard_flip]
execute if entity @s[advancements={asy:technical/block/billboard/interact={click=true}}] run function asy:block/billboard/impl/clicking/main
execute if score .move asy.data matches 1..4 run function asy:block/billboard/impl/buttons/check

stopsound @s * minecraft:entity.player.attack.strong
stopsound @s * minecraft:entity.player.attack.crit

advancement revoke @s only asy:technical/block/billboard/interact