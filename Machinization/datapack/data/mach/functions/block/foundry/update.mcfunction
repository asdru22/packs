data modify storage mach:storage root.temp.gui set from block ~ ~ ~ Items

execute if data storage mach:storage root.temp.gui[{Slot:0b}] if data storage mach:storage root.temp.gui[{Slot:11b}] if data storage mach:storage root.temp.gui[{Slot:13b}] unless data storage mach:storage root.temp.gui[{Slot:15b}] run data modify storage mach:storage root.temp.gui[{Slot:0b}].Slot set value 15b

execute if data storage mach:storage root.temp.gui[{Slot:0b}] if data storage mach:storage root.temp.gui[{Slot:11b}] unless data storage mach:storage root.temp.gui[{Slot:13b}] run data modify storage mach:storage root.temp.gui[{Slot:0b}].Slot set value 13b

execute if data storage mach:storage root.temp.gui[{Slot:0b}] unless data storage mach:storage root.temp.gui[{Slot:11b}] run data modify storage mach:storage root.temp.gui[{Slot:0b}].Slot set value 11b

execute if data storage mach:storage root.temp.gui[{Slot:11b}] if data storage mach:storage root.temp.gui[{Slot:13b}] if data storage mach:storage root.temp.gui[{Slot:15b}] run function mach:block/foundry/ugly_fix

function mach:block/foundry/slots
data modify storage mach:storage root.temp.items set value []
data modify storage mach:storage root.temp.items append from storage mach:storage root.temp.gui[{Slot:11b}]
data modify storage mach:storage root.temp.items append from storage mach:storage root.temp.gui[{Slot:13b}]
data modify storage mach:storage root.temp.items append from storage mach:storage root.temp.gui[{Slot:15b}]

data modify block ~ ~ ~ Items set from storage mach:storage root.temp.items