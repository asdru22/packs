function asd:player/block_check/init

execute if entity @s[predicate=asd:player/on_fire] run function asd:effects/on_fire/main

execute unless score @s asd.t matches 0 run function asd:player/events/trigger/main

execute unless score @s asd.recipe matches 0 run function asd:item/book/recipes