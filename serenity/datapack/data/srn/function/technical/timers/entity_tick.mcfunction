execute if entity @s[tag=srn.entity] run function srn:entity/timers/tick
execute if entity @s[tag=srn.block] run function srn:block/timers/tick
execute if entity @s[tag=srn.potion_marker,predicate=!srn:entity/has_vehicle] run function srn:item/throwable_potion/tick