data modify storage mach:storage root.temp.gui set from block ~ ~ ~ Items
execute if data storage mach:storage root.temp.gui[{Slot:0b}] unless data storage mach:storage root.temp.gui[{Slot:13b}] run data modify storage mach:storage root.temp.gui[{Slot:0b}].Slot set value 13b
function mach:block/single_slot/slots

data modify storage mach:storage root.temp.item set value []
data modify storage mach:storage root.temp.item insert -1 from storage mach:storage root.temp.gui[{Slot:13b}]
data modify block ~ ~ ~ Items set from storage mach:storage root.temp.item