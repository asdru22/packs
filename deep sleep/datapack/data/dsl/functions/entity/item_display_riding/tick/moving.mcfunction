execute if entity @s[predicate=dsl:entity/is_moving] on passengers run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.dsl.walking
execute if entity @s[predicate=!dsl:entity/is_moving] on passengers run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.dsl.idle