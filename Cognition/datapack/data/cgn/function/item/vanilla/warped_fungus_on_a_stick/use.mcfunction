data remove storage cgn:storage root.temp.item
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{cgn:{}}}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{cgn:{}}}}

function cgn:item/vanilla/warped_fungus_on_a_stick/main

execute if entity @s[gamemode=!creative] if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn{consume:true} run function cgn:item/vanilla/warped_fungus_on_a_stick/consume

scoreboard players reset @s cgn.used_warped_fungus_on_a_stick