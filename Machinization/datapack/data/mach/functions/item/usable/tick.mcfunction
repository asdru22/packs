execute if predicate mach:item/spring_loaded_crossbow run function mach:item/spring_loaded_crossbow/tick
execute if predicate mach:item/midnight_howl run function mach:item/midnight_howl/init
execute if predicate mach:item/advanced_grappling_hook run function mach:item/advanced_grappling_hook/as_player/tick

execute if score @s mach.using_item = @s mach.prev_using_item run function mach:item/usable/release
scoreboard players operation @s mach.prev_using_item = @s mach.using_item