#tellraw @p "---"
#tellraw @p [{"text":" ENCHANTMENT: ","color":"red"},{"nbt":"root.temp.ench.book.tag.nihility.StoredEnchantments[0].id","storage":"nihility:storage"}]

function nihility:recipes/enchant/next_tag
## remove 1st element
data remove storage nihility:storage root.temp.ench.book.tag.nihility.StoredEnchantments[0]
## are there more enchantments?
execute if data storage nihility:storage root.temp.ench.book.tag.nihility.StoredEnchantments[] run function nihility:recipes/enchant/next_enchantment
## generate item?
execute if data storage nihility:storage root.temp.ench.valid[] run function nihility:recipes/enchant/create_output