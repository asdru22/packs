## copy item tag to temp storage
#tellraw @p [{"text":"Recived TAG: ","color":"yellow"},{"nbt":"root.temp.ench.item.item_tag[0]","storage":"nihility:storage"}]
#tellraw @p [{"text":"Applier TAG: ","color":"light_purple"},{"nbt":"root.temp.ench.book.tag.nihility.StoredEnchantments[0].AppliableTo[0]","storage":"nihility:storage"}]
data modify storage nihility:storage root.temp.ench.temp.item_tag set from storage nihility:storage root.temp.ench.book.tag.nihility.StoredEnchantments[0].AppliableTo[0]
## check if tags match 0 = yes, 1 = no
execute store success score valid nihility.data run data modify storage nihility:storage root.temp.ench.temp.item_tag set from storage nihility:storage root.temp.ench.item.item_tag[0]
#tellraw @p {"score":{"name": "valid","objective": "nihility.data"}}
## if tags match, add enchantment to the list
execute if score valid nihility.data matches 0 run data modify storage nihility:storage root.temp.ench.valid prepend from storage nihility:storage root.temp.ench.book.tag.nihility.StoredEnchantments[0]
## remove first tag
data remove storage nihility:storage root.temp.ench.book.tag.nihility.StoredEnchantments[0].AppliableTo[0]
## repeat
execute if score valid nihility.data matches 1 if data storage nihility:storage root.temp.ench.book.tag.nihility.StoredEnchantments[0].AppliableTo[] run function nihility:recipes/enchant/next_tag