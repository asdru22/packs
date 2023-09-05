tellraw @p "---"
tellraw @p [{"text":" ENCHANTMENT: ","color":"red"},{"nbt":"root.temp.ench.book.tag.cotv.StoredEnchantments[0].id","storage":"cotv:storage"}]

function cotv:recipes/enchant/next_tag
## remove 1st element
data remove storage cotv:storage root.temp.ench.book.tag.cotv.StoredEnchantments[0]
## are there more enchantments?
execute if data storage cotv:storage root.temp.ench.book.tag.cotv.StoredEnchantments[] run function cotv:recipes/enchant/next_enchantment
## generate item?
execute if data storage cotv:storage root.temp.ench.valid[] run function cotv:recipes/enchant/create_output