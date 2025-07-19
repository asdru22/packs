# Second-clocks a hostile entity

execute if score #difficulty cgn.dummy matches 0 run return run tp ~ -1000 ~

execute on attacker run tag @s[type=!minecraft:player] add cgn.hostile_target
execute if entity @s[tag=!cgn.attacking] if entity @n[predicate=cgn:entity_properties/hostile_target,distance=..16] run function cgn:entity/trader_entity/hostile/line_of_sight
execute if entity @s[tag=cgn.peeper,tag=cgn.attacking] run function cgn:entity/peeper/prepare_attack