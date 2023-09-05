scoreboard players reset $remove mach.data
data modify storage mach:storage root.temp.container set from block ~ ~ ~ Items
data modify storage mach:storage root.temp.item set from storage mach:storage root.temp.container[0]
scoreboard players set $success mach.data 0
function mach:block/compressor/compress/item_check
execute if score $remove mach.data matches 1 run function mach:block/single_slot/remove