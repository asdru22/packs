scoreboard players operation $temp mach.data = @s mach.using_item
scoreboard players operation $temp mach.data %= $10 mach.data

data modify storage mach:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{smithed:{id:"mach:spring_loaded_crossbow"}}}]
data modify storage mach:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{smithed:{id:"mach:spring_loaded_crossbow"}}}
execute store result score $ammo mach.data if data storage mach:storage root.temp.item.tag.mach.Ammo[]
execute if score $temp mach.data matches 0 if score $ammo mach.data matches ..9 run function mach:item/spring_loaded_crossbow/load_arrow