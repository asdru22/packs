execute store result score char_count nihility.data run data get storage smithed.crafter:input root.temp.shapeless_crafting_input[{tag:{nihility:{id:"desecrated_char"}}}].Count

data modify storage nihility:storage root.temp.merge.final set from storage smithed.crafter:input root.temp.shapeless_crafting_input[{tag:{nihility:{id:"mystic_book"}}}].tag.nihility.StoredEnchantments

execute if score char_count nihility.data matches 1 run data remove storage nihility:storage root.temp.merge.final[0]
execute if score char_count nihility.data matches 2 run data remove storage nihility:storage root.temp.merge.final[1]
execute if score char_count nihility.data matches 3 run data remove storage nihility:storage root.temp.merge.final[2]
execute if score char_count nihility.data matches 4 run data remove storage nihility:storage root.temp.merge.final[3]
execute if score char_count nihility.data matches 5 run data remove storage nihility:storage root.temp.merge.final[4]
execute if score char_count nihility.data matches 6 run data remove storage nihility:storage root.temp.merge.final[5]
execute if score char_count nihility.data matches 7 run data remove storage nihility:storage root.temp.merge.final[6]
execute if score char_count nihility.data matches 8 run data remove storage nihility:storage root.temp.merge.final[7]


execute if data storage nihility:storage root.temp.merge.final[] run loot replace block ~ ~ ~ container.16 loot nihility:items/mystic_book