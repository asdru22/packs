data modify storage smithed.crafter:input flags append value "consume_tools"

data modify storage nihility:storage root.temp.item set from storage smithed.crafter:input root.temp.shapeless_crafting_input[{item_tag:["#nihility:enchantable"]}]

execute store result score enchs nihility.data if data storage smithed.crafter:input root.temp.shapeless_crafting_input[{item_tag:["#nihility:enchantable"]}].tag.nihility.Enchantments[]

function nihility:recipes/disenchant/orb

data modify storage nihility:storage root.temp.item.tag.display.Name set from storage nihility:storage root.temp.item.tag.nihility.OldName
data remove storage nihility:storage root.temp.item.tag.display.Lore[-1]
data remove storage nihility:storage root.temp.item.tag.nihility.OldName
data remove storage nihility:storage root.temp.item.tag.nihility.Enchantments

item replace block ~ ~ ~ container.16 with stone
data modify block ~ ~ ~ Items[{Slot:16b}].id set from storage nihility:storage root.temp.item.id
data modify block ~ ~ ~ Items[{Slot:16b}].tag set from storage nihility:storage root.temp.item.tag