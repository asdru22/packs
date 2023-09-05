############################################################
# Checks if an item is going to take damage based on unbreaking enchantments
############################################################

execute if data storage aar:storage root.temp.item.tag.Enchantments[{lvl:1s,id:"minecraft:unbreaking"}] if predicate aar:chance/1_2 run function aar:item/durability/modify/check/overflow
execute if data storage aar:storage root.temp.item.tag.Enchantments[{lvl:2s,id:"minecraft:unbreaking"}] if predicate aar:chance/1_3 run function aar:item/durability/modify/check/overflow
execute if data storage aar:storage root.temp.item.tag.Enchantments[{lvl:3s,id:"minecraft:unbreaking"}] if predicate aar:chance/1_4 run function aar:item/durability/modify/check/overflow
execute unless data storage aar:storage root.temp.item.tag.Enchantments[{id:"minecraft:unbreaking"}] run function aar:item/durability/modify/check/overflow
