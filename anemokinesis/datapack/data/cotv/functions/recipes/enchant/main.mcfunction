say enchant

data remove storage smithed:crafter root.temp.shapeless_crafting_input[{item_tag:["#minecraft:piglin_loved"]}].item_tag[0]

data modify storage cotv:storage root.temp.ench.book set from storage smithed:crafter root.temp.shapeless_crafting_input[{tag:{smithed:{id:"cotv:mystic_book"}}}]

data modify storage cotv:storage root.temp.ench.item set from storage smithed:crafter root.temp.shapeless_crafting_input[{item_tag:["#cotv:enchantable"]}]
tellraw @p [{"text":"ITEM: ","color":"green"},{"nbt":"root.temp.ench.item","storage":"cotv:storage"}]
data modify storage cotv:storage root.temp.ench.valid set value []
tellraw @p {"nbt":"root.temp.ench.valid","storage":"cotv:storage"}
function cotv:recipes/enchant/next_enchantment