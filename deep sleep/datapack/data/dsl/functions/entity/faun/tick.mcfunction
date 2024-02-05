execute if entity @s[scores={dsl.dummy2=0},tag=!dsl.entity.base_attack,predicate=dsl:entity/is_moving] if entity @e[type=!#dsl:not_mob,distance=..20,tag=!dsl.faun,predicate=!dsl:entity/faun_can_target] run function dsl:entity/faun/charge

execute if entity @s[scores={dsl.dummy2=1..},predicate=!dsl:entity/is_moving] run function dsl:entity/faun/stop_charge