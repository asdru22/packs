data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.windup_crossbow"}'}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.windup_crossbow"}'}}

scoreboard players set $load_time cgn.dummy 25
execute store result score $quick_charge cgn.dummy run data get storage cgn:storage root.temp.item.components."minecraft:enchantments".levels."minecraft:quick_charge" 3
scoreboard players operation $load_time cgn.dummy -= $quick_charge cgn.dummy
scoreboard players operation #temp cgn.dummy = @s cgn.using_item
scoreboard players operation #temp cgn.dummy %= $load_time cgn.dummy

execute if score @s cgn.using_item matches 10.. if score #temp cgn.dummy matches 0 run function cgn:item/windup_crossbow/charging/charged