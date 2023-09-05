execute store result score $charge mach.data run data get storage mach:storage root.temp.item[0].tag.mach.charge
execute if score $charge mach.data matches 1.. run function mach:item/battery/found
data remove storage mach:storage root.temp.item[0]
execute if score $charge mach.data matches ..0 if data storage mach:storage root.temp.item[] run function mach:item/battery/search