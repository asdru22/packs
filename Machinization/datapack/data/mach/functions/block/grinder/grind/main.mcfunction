data modify storage mach:storage root.temp.item set from block ~ ~ ~ Items[{Slot:13b}]
scoreboard players reset $remove mach.data
scoreboard players set $success mach.data 0
function mach:block/grinder/grind/item_check
execute if score $remove mach.data matches 1 run function mach:block/single_slot/remove