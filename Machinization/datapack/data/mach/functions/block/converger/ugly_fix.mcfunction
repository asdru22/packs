execute store result score $count mach.data if data storage mach:storage root.temp.gui[]
data modify storage mach:storage root.temp.fix set from storage mach:storage root.temp.gui[0]
execute if score $count mach.data matches 4 if data storage mach:storage root.temp{fix:{Slot:13b}} run data modify storage mach:storage root.temp.gui[0].Slot set value 0b