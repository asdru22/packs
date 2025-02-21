data remove storage srn:storage root.temp.item
data modify storage srn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]
data modify storage srn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:warped_fungus_on_a_stick"}

function #srn:item/warped_fungus_on_a_stick

execute if entity @s[gamemode=!creative] if data storage srn:storage root.temp.item.components."minecraft:custom_data".srn{consume:true} run function srn:item/warped_fungus_on_a_stick/consume

execute if entity @s[gamemode=!creative] if data storage srn:storage root.temp.item.components."minecraft:custom_data".srn.durability unless data storage srn:storage root.temp.item.components."minecraft:custom_data".srn{ignore_durability:1b} run function srn:item/warped_fungus_on_a_stick/damage

scoreboard players reset @s srn.used_warped_fungus_on_a_stick