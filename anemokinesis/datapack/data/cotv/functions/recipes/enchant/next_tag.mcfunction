## copy item tag to temp storage
tellraw @p [{"text":"Recived TAG: ","color":"yellow"},{"nbt":"root.temp.ench.item.item_tag[0]","storage":"cotv:storage"}]
tellraw @p [{"text":"Applier TAG: ","color":"light_purple"},{"nbt":"root.temp.ench.book.tag.cotv.StoredEnchantments[0].AppliableTo[0]","storage":"cotv:storage"}]
data modify storage cotv:storage root.temp.ench.temp.item_tag set from storage cotv:storage root.temp.ench.book.tag.cotv.StoredEnchantments[0].AppliableTo[0]
## check if tags match 0 = yes, 1 = no
execute store success score valid cotv.dummy run data modify storage cotv:storage root.temp.ench.temp.item_tag set from storage cotv:storage root.temp.ench.item.item_tag[0]
tellraw @p {"score":{"name": "valid","objective": "cotv.dummy"}}
## if tags match, add enchantment to the list
execute if score valid cotv.dummy matches 0 run data modify storage cotv:storage root.temp.ench.valid prepend from storage cotv:storage root.temp.ench.book.tag.cotv.StoredEnchantments[0]
## remove first tag
data remove storage cotv:storage root.temp.ench.book.tag.cotv.StoredEnchantments[0].AppliableTo[0]
## repeat
execute if score valid cotv.dummy matches 1 if data storage cotv:storage root.temp.ench.book.tag.cotv.StoredEnchantments[0].AppliableTo[] run function cotv:recipes/enchant/next_tag