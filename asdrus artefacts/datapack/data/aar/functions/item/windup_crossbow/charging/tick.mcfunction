data modify storage aar:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{aar:{id:"windup_crossbow"}}}]
data modify storage aar:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{aar:{id:"windup_crossbow"}}}

scoreboard players set $load_time aar.int 25
execute store result score $quick_charge aar.int run data get storage aar:storage root.temp.item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl 5
scoreboard players operation $load_time aar.int -= $quick_charge aar.int
scoreboard players operation #temp aar.int = @s aar.using_item
scoreboard players operation #temp aar.int %= $load_time aar.int

execute if score #temp aar.int matches 0 run function aar:item/windup_crossbow/charging/charged