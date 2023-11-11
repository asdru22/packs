data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{cgn:{id:"windup_crossbow"}}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{cgn:{id:"windup_crossbow"}}}

scoreboard players set $load_time cgn.dummy 25
execute store result score $quick_charge cgn.dummy run data get storage cgn:storage root.temp.item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl 5
scoreboard players operation $load_time cgn.dummy -= $quick_charge cgn.dummy
scoreboard players operation #temp cgn.dummy = @s srn.using_item
scoreboard players operation #temp cgn.dummy %= $load_time cgn.dummy

execute if score #temp cgn.dummy matches 0 run function cgn:item/windup_crossbow/charging/charged