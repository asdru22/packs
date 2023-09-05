particle flame ~ ~ ~ 0.3 0.3 0.3 0.01 13

execute if score $remove mach.data matches 1 store result storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:tin_ingot"}}}].Count byte 1 run scoreboard players remove $tin_ingot mach.data 1
execute if score $remove mach.data matches 1 store result storage mach:storage root.temp.container[{id:"minecraft:copper_ingot"}].Count byte 1 run scoreboard players remove $copper_ingot mach.data 3

execute if score $remove mach.data matches 2 store result storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:zinc_ingot"}}}].Count byte 1 run scoreboard players remove $zinc_ingot mach.data 2
execute if score $remove mach.data matches 2 store result storage mach:storage root.temp.container[{id:"minecraft:copper_ingot"}].Count byte 1 run scoreboard players remove $copper_ingot mach.data 3

execute if score $remove mach.data matches 3 store result storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:carbon_dust"}}}].Count byte 1 run scoreboard players remove $carbon_dust mach.data 2
execute if score $remove mach.data matches 3 store result storage mach:storage root.temp.container[{id:"minecraft:iron_ingot"}].Count byte 1 run scoreboard players remove $iron_ingot mach.data 4

execute if score $remove mach.data matches 4 store result storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:silver_fragment"}}}].Count byte 1 run scoreboard players remove $silver_fragment mach.data 8
execute if score $remove mach.data matches 4 store result storage mach:storage root.temp.container[{id:"minecraft:copper_ingot"}].Count byte 1 run scoreboard players remove $copper_ingot mach.data 1

execute if score $remove mach.data matches 5 store result storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:silver_fragment"}}}].Count byte 1 run scoreboard players remove $silver_fragment mach.data 2
execute if score $remove mach.data matches 5 store result storage mach:storage root.temp.container[{id:"minecraft:copper_ingot"}].Count byte 1 run scoreboard players remove $copper_ingot mach.data 1
execute if score $remove mach.data matches 5 store result storage mach:storage root.temp.container[{id:"minecraft:gold_ingot"}].Count byte 1 run scoreboard players remove $gold_ingot mach.data 3

execute if score $remove mach.data matches 6 store result storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:sterling_silver_ingot"}}}].Count byte 1 run scoreboard players remove $sterling_silver_ingot mach.data 1
execute if score $remove mach.data matches 6 store result storage mach:storage root.temp.container[{id:"minecraft:nether_star"}].Count byte 1 run scoreboard players remove $nether_star mach.data 1
execute if score $remove mach.data matches 6 store result storage mach:storage root.temp.container[{id:"minecraft:echo_powder"}].Count byte 1 run scoreboard players remove $echo_powder mach.data 5