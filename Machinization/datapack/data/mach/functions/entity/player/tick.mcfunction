execute if entity @s[scores={mach.place_furnace=1..}] run function mach:block/_placement/init
execute if entity @s[scores={mach.using_item=1..}] run function mach:item/usable/tick
execute if entity @s[scores={mach.use_crossbow=1..}] run function mach:entity/player/right_click/crossbow
execute if entity @s[tag=mach.using_spring_loaded_crossbow,predicate=mach:item/spring_loaded_crossbow] run function mach:item/spring_loaded_crossbow/use/main
tag @s[tag=mach.using_spring_loaded_crossbow,predicate=!mach:item/spring_loaded_crossbow] remove mach.using_spring_loaded_crossbow 
execute if entity @s[scores={mach.use_wofas=1..}] run function mach:entity/player/right_click/warped_fungus_on_a_stick