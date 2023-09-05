execute if entity @s[tag=!mach.item_cooldown] run function mach:item/thunderbuss/as_player/battery_check

data modify storage mach:storage root.temp.item set from entity @s[nbt={SelectedItem:{tag:{smithed:{id:"mach:thunderbuss"}}}}] SelectedItem
data modify storage mach:storage root.temp.item set from entity @s Inventory[{Slot:-106b,tag:{smithed:{id:"mach:thunderbuss"}}}]

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:item/grappling_hook/load
execute if data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.offhand mach:item/grappling_hook/load