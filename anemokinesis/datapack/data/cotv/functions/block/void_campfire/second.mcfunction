particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0 0.02 0 0.01 2
execute if block ~ ~ ~ campfire{Items:[{Slot:0b}]} run function cotv:block/void_campfire/cook/slot0
execute if block ~ ~ ~ campfire{Items:[{Slot:1b}]} run function cotv:block/void_campfire/cook/slot1
execute if block ~ ~ ~ campfire{Items:[{Slot:2b}]} run function cotv:block/void_campfire/cook/slot2
execute if block ~ ~ ~ campfire{Items:[{Slot:3b}]} run function cotv:block/void_campfire/cook/slot3

execute as @a[gamemode=!creative,gamemode=!spectator,predicate=cotv:block/void_campfire_burn,dx=0] run function cotv:block/void_campfire/apply_burn