scoreboard players set $charge mach.data 0
data modify storage mach:storage root.temp.item set value []
data modify storage mach:storage root.temp.item append from entity @s Inventory[{tag:{smithed:{id:"mach:battery"}}}]
execute if data storage mach:storage root.temp.item[] run function mach:item/battery/search