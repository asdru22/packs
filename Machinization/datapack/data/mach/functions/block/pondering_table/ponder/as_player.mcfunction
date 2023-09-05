clear @s #mach:shulkers{mach:{gui:1b}}
data remove storage mach:storage root.temp.item

execute unless data storage mach:storage root.temp.gui[{Slot:0b,tag:{smithed:{id:"mach:copper_wire"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/copper_wire_check
execute unless data storage mach:storage root.temp.gui[{Slot:1b,tag:{smithed:{id:"mach:iron_fiber"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/iron_fiber_check
execute unless data storage mach:storage root.temp.gui[{Slot:2b,tag:{smithed:{id:"mach:sifting_net"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/sifting_net_check
execute unless data storage mach:storage root.temp.gui[{Slot:3b,tag:{smithed:{id:"mach:spring"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/spring_check
execute unless data storage mach:storage root.temp.gui[{Slot:4b,tag:{smithed:{id:"mach:spring_loaded_crossbow"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/spring_loaded_crossbow_check
execute unless data storage mach:storage root.temp.gui[{Slot:5b,tag:{smithed:{id:"mach:grappling_hook"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/grappling_hook_check
execute unless data storage mach:storage root.temp.gui[{Slot:6b,tag:{smithed:{id:"mach:bronze_plated_helmet"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/bronze_plated_helmet_check
execute unless data storage mach:storage root.temp.gui[{Slot:7b,tag:{smithed:{id:"mach:bronze_plated_chestplate"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/bronze_plated_chestplate_check
execute unless data storage mach:storage root.temp.gui[{Slot:8b,tag:{smithed:{id:"mach:bronze_plated_leggings"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/bronze_plated_leggings_check
execute unless data storage mach:storage root.temp.gui[{Slot:9b,tag:{smithed:{id:"mach:bronze_plated_boots"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/bronze_plated_boots_check
execute unless data storage mach:storage root.temp.gui[{Slot:10b,tag:{smithed:{id:"mach:battery"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/battery_check
execute unless data storage mach:storage root.temp.gui[{Slot:11b,tag:{smithed:{id:"mach:thunderbuss"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/thunderbuss_check
execute unless data storage mach:storage root.temp.gui[{Slot:12b,tag:{smithed:{id:"mach:midnight_howl"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/midnight_howl_check
execute unless data storage mach:storage root.temp.gui[{Slot:13b,tag:{smithed:{id:"mach:bounce_pad"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/bounce_pad_check
execute unless data storage mach:storage root.temp.gui[{Slot:14b,tag:{smithed:{id:"mach:advanced_grappling_hook"},mach:{gui:1b}}}] run function mach:block/pondering_table/ponder/take_item/advanced_grappling_hook_check

execute at @s run function mach:block/pondering_table/ponder/extra_items