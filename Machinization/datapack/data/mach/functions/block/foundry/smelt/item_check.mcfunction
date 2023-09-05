execute store result score $tin_ingot mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:tin_ingot"}}}].Count
execute store result score $copper_ingot mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:copper_ingot"}].Count
execute store result score $iron_ingot mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:iron_ingot"}].Count
execute store result score $gold_ingot mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:gold_ingot"}].Count
execute store result score $zinc_ingot mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:zinc_ingot"}}}].Count
execute store result score $carbon_dust mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:carbon_dust"}}}].Count
execute store result score $silver_fragment mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:silver_fragment"}}}].Count
execute store result score $sterling_silver_ingot mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:sterling_silver_ingot"}}}].Count
execute store result score $echo_powder mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:recovery_compass",tag:{smithed:{id:"mach:echo_powder"}}}].Count
execute store result score $nether_star mach.data run data get storage mach:storage root.temp.container[{id:"minecraft:nether_star"}].Count

execute if score $count mach.data matches 3 unless score $remove mach.data matches 1.. if score $copper_ingot mach.data matches 1.. if score $silver_fragment mach.data matches 2.. if score $gold_ingot mach.data matches 3.. run function mach:block/foundry/smelt/items/rose_gold_ingot

execute if score $count mach.data matches 2 unless score $remove mach.data matches 1.. if score $tin_ingot mach.data matches 1.. if score $copper_ingot mach.data matches 3.. run function mach:block/foundry/smelt/items/bronze_ingot

execute if score $count mach.data matches 2 unless score $remove mach.data matches 1.. if score $zinc_ingot mach.data matches 2.. if score $copper_ingot mach.data matches 3.. run function mach:block/foundry/smelt/items/brass_ingot

execute if score $count mach.data matches 2 unless score $remove mach.data matches 1.. if score $iron_ingot mach.data matches 4.. if score $carbon_dust mach.data matches 2.. run function mach:block/foundry/smelt/items/cast_iron_bar

execute if score $count mach.data matches 2 unless score $remove mach.data matches 1.. if score $copper_ingot mach.data matches 1.. if score $silver_fragment mach.data matches 8.. run function mach:block/foundry/smelt/items/sterling_silver_ingot

execute if score $count mach.data matches 3 unless score $remove mach.data matches 1.. if score $sterling_silver_ingot mach.data matches 1.. if score $nether_star mach.data matches 1.. if score $echo_powder mach.data matches 5.. run function mach:block/foundry/smelt/items/midnight_star