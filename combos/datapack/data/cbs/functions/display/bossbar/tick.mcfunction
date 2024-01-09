scoreboard players operation @s cbs.slot.old = @s cbs.slot.current

data modify storage cbs:storage root.temp.inv set value []
data modify storage cbs:storage root.temp.inv insert -1 from entity @s Inventory[{Slot:0b}]
data modify storage cbs:storage root.temp.inv insert -1 from entity @s Inventory[{Slot:1b}]
data modify storage cbs:storage root.temp.inv insert -1 from entity @s Inventory[{Slot:2b}]
data modify storage cbs:storage root.temp.inv insert -1 from entity @s Inventory[{Slot:3b}]

execute store result storage cbs:storage root.temp.id int 1 run scoreboard players get @s cbs.id
function cbs:display/bossbar/update with storage cbs:storage root.temp