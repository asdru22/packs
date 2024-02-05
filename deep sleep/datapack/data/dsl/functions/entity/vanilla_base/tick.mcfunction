execute if entity @s[predicate=dsl:entity/just_hurt,tag=!dsl.entity.hurt] run function dsl:entity/vanilla_base/hurt with entity @s ArmorItems[3].tag.dsl

# check if hurt time is 0
execute if entity @s[predicate=dsl:entity/no_longer_hurt,tag=dsl.entity.hurt] run function dsl:entity/vanilla_base/unhurt

execute if entity @s[tag=!dsl.entity.static,tag=!dsl.entity.attacking,tag=!dsl.entity.base_attack] run function dsl:entity/vanilla_base/can_move

execute if entity @s[tag=dsl.faun] run function dsl:entity/faun/tick
