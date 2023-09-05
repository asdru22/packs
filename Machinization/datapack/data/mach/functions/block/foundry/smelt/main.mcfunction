scoreboard players reset $remove mach.data
data modify storage mach:storage root.temp.container set from block ~ ~ ~ Items
execute store result score $count mach.data if data storage mach:storage root.temp.container[]
scoreboard players set $success mach.data 0
function mach:block/foundry/smelt/item_check
execute if score $remove mach.data matches 1.. run function mach:block/foundry/smelt/remove_items
data modify block ~ ~ ~ Items set from storage mach:storage root.temp.container