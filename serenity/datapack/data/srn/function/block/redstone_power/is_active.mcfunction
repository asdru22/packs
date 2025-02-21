
scoreboard players set #temp srn.dummy 0

#self powered
function srn:block/redstone_power/is_powered
execute if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

#other powered
execute if score #temp srn.dummy matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #srn:transparent run function srn:block/redstone_power/is_powered
execute if score #temp srn.dummy matches 0 if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

execute if score #temp srn.dummy matches 0 positioned ~ ~-1 ~ unless block ~ ~ ~ #srn:transparent run function srn:block/redstone_power/is_powered
execute if score #temp srn.dummy matches 0 if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

execute if score #temp srn.dummy matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ #srn:transparent run function srn:block/redstone_power/is_powered
execute if score #temp srn.dummy matches 0 if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

execute if score #temp srn.dummy matches 0 positioned ~-1 ~ ~ unless block ~ ~ ~ #srn:transparent run function srn:block/redstone_power/is_powered
execute if score #temp srn.dummy matches 0 if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

execute if score #temp srn.dummy matches 0 positioned ~ ~ ~1 unless block ~ ~ ~ #srn:transparent run function srn:block/redstone_power/is_powered
execute if score #temp srn.dummy matches 0 if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

execute if score #temp srn.dummy matches 0 positioned ~ ~ ~-1 unless block ~ ~ ~ #srn:transparent run function srn:block/redstone_power/is_powered
execute if score #temp srn.dummy matches 0 if score #out srn.dummy matches 1 run scoreboard players set #temp srn.dummy 1

### Self Active

#dynamic
execute if score #temp srn.dummy matches 0 positioned ~ ~01 ~ if block ~ ~ ~ #srn:weak_power_top if predicate srn:block/is_emitting_signal unless block ~ ~ ~ minecraft:redstone_torch run scoreboard players set #temp srn.dummy 1
execute if score #temp srn.dummy matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #srn:weak_power_bottom if predicate srn:block/is_emitting_signal run scoreboard players set #temp srn.dummy 1
execute if score #temp srn.dummy matches 0 positioned ~01 ~ ~ if block ~ ~ ~ #srn:weak_power_side if predicate srn:block/is_emitting_signal run scoreboard players set #temp srn.dummy 1
execute if score #temp srn.dummy matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ #srn:weak_power_side if predicate srn:block/is_emitting_signal run scoreboard players set #temp srn.dummy 1
execute if score #temp srn.dummy matches 0 positioned ~ ~ ~01 if block ~ ~ ~ #srn:weak_power_side if predicate srn:block/is_emitting_signal run scoreboard players set #temp srn.dummy 1
execute if score #temp srn.dummy matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ #srn:weak_power_side if predicate srn:block/is_emitting_signal run scoreboard players set #temp srn.dummy 1

#redstone torch
execute if block ~ ~1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set #temp srn.dummy 1
execute if block ~1 ~ ~ #srn:redstone_torch[lit=true] run scoreboard players set #temp srn.dummy 1
execute if block ~-1 ~ ~ #srn:redstone_torch[lit=true] run scoreboard players set #temp srn.dummy 1
execute if block ~ ~ ~1 #srn:redstone_torch[lit=true] run scoreboard players set #temp srn.dummy 1
execute if block ~ ~ ~-1 #srn:redstone_torch[lit=true] run scoreboard players set #temp srn.dummy 1