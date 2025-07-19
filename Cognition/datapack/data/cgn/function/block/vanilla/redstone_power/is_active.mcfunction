scoreboard players set #temp cgn.dummy 0

#self powered
function cgn:block/vanilla/redstone_power/is_powered
execute if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

#other powered
execute if score #temp cgn.dummy matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #cgn:transparent run function cgn:block/vanilla/redstone_power/is_powered
execute if score #temp cgn.dummy matches 0 if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

execute if score #temp cgn.dummy matches 0 positioned ~ ~-1 ~ unless block ~ ~ ~ #cgn:transparent run function cgn:block/vanilla/redstone_power/is_powered
execute if score #temp cgn.dummy matches 0 if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

execute if score #temp cgn.dummy matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ #cgn:transparent run function cgn:block/vanilla/redstone_power/is_powered
execute if score #temp cgn.dummy matches 0 if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

execute if score #temp cgn.dummy matches 0 positioned ~-1 ~ ~ unless block ~ ~ ~ #cgn:transparent run function cgn:block/vanilla/redstone_power/is_powered
execute if score #temp cgn.dummy matches 0 if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

execute if score #temp cgn.dummy matches 0 positioned ~ ~ ~1 unless block ~ ~ ~ #cgn:transparent run function cgn:block/vanilla/redstone_power/is_powered
execute if score #temp cgn.dummy matches 0 if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

execute if score #temp cgn.dummy matches 0 positioned ~ ~ ~-1 unless block ~ ~ ~ #cgn:transparent run function cgn:block/vanilla/redstone_power/is_powered
execute if score #temp cgn.dummy matches 0 if score #out cgn.dummy matches 1 run scoreboard players set #temp cgn.dummy 1

### Self Active

#dynamic
execute if score #temp cgn.dummy matches 0 positioned ~ ~01 ~ if block ~ ~ ~ #cgn:redstone_power/weak_top if predicate cgn:location_check/is_emitting_signal unless block ~ ~ ~ minecraft:redstone_torch run scoreboard players set #temp cgn.dummy 1
execute if score #temp cgn.dummy matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #cgn:redstone_power/weak_bottom if predicate cgn:location_check/is_emitting_signal run scoreboard players set #temp cgn.dummy 1
execute if score #temp cgn.dummy matches 0 positioned ~01 ~ ~ if block ~ ~ ~ #cgn:redstone_power/weak_side if predicate cgn:location_check/is_emitting_signal run scoreboard players set #temp cgn.dummy 1
execute if score #temp cgn.dummy matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ #cgn:redstone_power/weak_side if predicate cgn:location_check/is_emitting_signal run scoreboard players set #temp cgn.dummy 1
execute if score #temp cgn.dummy matches 0 positioned ~ ~ ~01 if block ~ ~ ~ #cgn:redstone_power/weak_side if predicate cgn:location_check/is_emitting_signal run scoreboard players set #temp cgn.dummy 1
execute if score #temp cgn.dummy matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ #cgn:redstone_power/weak_side if predicate cgn:location_check/is_emitting_signal run scoreboard players set #temp cgn.dummy 1

#redstone torch
execute if block ~ ~1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set #temp cgn.dummy 1
execute if block ~1 ~ ~ #cgn:redstone_power/torch[lit=true] run scoreboard players set #temp cgn.dummy 1
execute if block ~-1 ~ ~ #cgn:redstone_power/torch[lit=true] run scoreboard players set #temp cgn.dummy 1
execute if block ~ ~ ~1 #cgn:redstone_power/torch[lit=true] run scoreboard players set #temp cgn.dummy 1
execute if block ~ ~ ~-1 #cgn:redstone_power/torch[lit=true] run scoreboard players set #temp cgn.dummy 1