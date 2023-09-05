data remove storage smithed.crafter:input recipe[{item_tag:["#minecraft:piglin_loved"]}].item_tag[0]

data modify storage nihility:storage root.temp.ench.book set from storage smithed.crafter:input recipe[{tag:{smithed:{id:"nihility:mystic_book"}}}]

data modify storage nihility:storage root.temp.ench.item set from storage smithed.crafter:input recipe[{item_tag:["#nihility:enchantable"]}]
#tellraw @p [{"text":"ITEM: ","color":"green"},{"nbt":"root.temp.ench.item","storage":"nihility:storage"}]
data modify storage nihility:storage root.temp.ench.valid set value []
#tellraw @p {"nbt":"root.temp.ench.valid","storage":"nihility:storage"}
function nihility:recipes/enchant/next_enchantment