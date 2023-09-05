execute if predicate mach:item/spring_loaded_crossbow run tag @s add mach.using_spring_loaded_crossbow
execute if predicate mach:item/grappling_hook run function mach:item/grappling_hook/as_player/check
execute if predicate mach:item/thunderbuss run function mach:item/thunderbuss/as_player/check

scoreboard players reset @s mach.use_crossbow