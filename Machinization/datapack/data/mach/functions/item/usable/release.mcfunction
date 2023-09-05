scoreboard players reset @s mach.using_item

execute if entity @s[tag=mach.release,predicate=mach:item/spring_loaded_crossbow] run function mach:item/spring_loaded_crossbow/release
execute if entity @s[tag=mach.use_adv,predicate=mach:item/advanced_grappling_hook] run function mach:item/advanced_grappling_hook/as_player/stop