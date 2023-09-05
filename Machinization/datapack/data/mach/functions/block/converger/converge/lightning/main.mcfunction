scoreboard players set $charge mach.data 100
data modify storage mach:storage root.temp.item.tag.mach.charge set value 100
execute if data block ~ ~ ~ Items[{Slot:11b,tag:{smithed:{id:"mach:battery"}}}] run item modify block ~ ~ ~ container.11 mach:item/battery
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{smithed:{id:"mach:battery"}}}] run item modify block ~ ~ ~ container.13 mach:item/battery
execute if data block ~ ~ ~ Items[{Slot:15b,tag:{smithed:{id:"mach:battery"}}}] run item modify block ~ ~ ~ container.15 mach:item/battery