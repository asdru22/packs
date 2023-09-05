data modify storage mach:storage root.temp.item set from block ~ ~ ~ Items[{Slot:13b}]
scoreboard players reset $remove mach.data
execute store result score $delete mach.data run data get storage mach:storage root.temp.item.Count
scoreboard players set $success mach.data 0
function mach:block/smeltery/smelt/item_check
execute if score $remove mach.data matches 1 run function mach:block/smeltery/smelt/remove