# execute as vehicle
execute on vehicle run function dsl:entity/item_display_riding/tick/vehicle

execute if entity @s[tag=dsl.entity.animation_timer] run function dsl:entity/item_display_riding/play_animation with entity @s item.tag.dsl

execute if entity @s[tag=dsl.cloudchime] run function dsl:entity/cloudchime/tick
