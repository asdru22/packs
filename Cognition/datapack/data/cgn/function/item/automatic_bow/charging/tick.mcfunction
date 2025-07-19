execute store result score $creative cgn.dummy if entity @s[gamemode=creative]
execute store result score $count cgn.dummy if items entity @s container.* #arrows
execute if score $count cgn.dummy matches 0 if score $creative cgn.dummy matches 1 run scoreboard players set $count cgn.dummy 1

execute if score $count cgn.dummy matches 0 run scoreboard players reset @s cgn.using_item
execute if score $count cgn.dummy matches 0 run return fail

execute unless items entity @s weapon.* poisonous_potato[item_name='{"translate":"item.cgn.automatic_bow"}'] run return fail

data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.automatic_bow"}'}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.automatic_bow"}'}}


scoreboard players operation #temp cgn.dummy = @s cgn.using_item
scoreboard players operation #temp cgn.dummy %= #10 cgn.dummy

execute if score #temp cgn.dummy matches 2 run function cgn:item/automatic_bow/charging/change_model {model:1}
execute if score #temp cgn.dummy matches 5 run function cgn:item/automatic_bow/charging/change_model {model:2}
execute if score #temp cgn.dummy matches 8 run function cgn:item/automatic_bow/charging/change_model {model:3}
execute if score #temp cgn.dummy matches 0 run function cgn:item/automatic_bow/charging/change_model {model:0}

execute if score @s cgn.using_item matches 10.. if score #temp cgn.dummy matches 0 run function cgn:item/automatic_bow/has_arrow