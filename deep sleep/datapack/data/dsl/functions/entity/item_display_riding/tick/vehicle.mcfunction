execute rotated as @s on passengers run tp @s ^ ^ ^ ~180 ~

execute if predicate dsl:entity/is_moving on passengers run data modify entity @s[tag=!dsl.entity.static] item.tag.CustomModelData set from entity @s item.tag.dsl.walking
execute unless predicate dsl:entity/is_moving on passengers run data modify entity @s[tag=!dsl.entity.static] item.tag.CustomModelData set from entity @s item.tag.dsl.idle

# check if hurt time is 0
execute if entity @s[predicate=dsl:entity/no_longer_hurt] on passengers if entity @s[tag=dsl.entity.hurt] run function dsl:entity/item_display_riding/hurt/unhurt
# check if hurt time is 10
execute if entity @s[predicate=dsl:entity/just_hurt] on passengers if entity @s[tag=!dsl.entity.hurt] run function dsl:entity/item_display_riding/hurt/display with entity @s item.tag.dsl