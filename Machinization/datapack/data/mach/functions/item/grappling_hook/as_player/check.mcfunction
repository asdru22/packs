data modify storage mach:storage root.temp.item set from entity @s SelectedItem
data modify storage mach:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=!mach.item_cooldown] run function mach:item/grappling_hook/as_player/init

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:item/grappling_hook/load
execute if data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.offhand mach:item/grappling_hook/load