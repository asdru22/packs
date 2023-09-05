data modify entity @s Item.id set from storage smithed.crafter:input recipe[{item_tag:["#nihility:enchantable"]}].id
data modify entity @s CustomName set from storage smithed.crafter:input recipe[{item_tag:["#nihility:enchantable"]}].tag.display.Name
data remove storage nihility:storage root.temp.lore 
data modify storage nihility:storage root.temp.lore set from block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore[-1]
data remove block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore[-1]
item modify block ~ ~ ~ container.16 nihility:get_old_name
data modify block ~ ~ ~ Items[{Slot:16b}].tag.nihility.OldName set from block ~ ~ ~ Items[{Slot:16b}].tag.display.Name

item modify block ~ ~ ~ container.16 nihility:enchant
execute if data storage nihility:storage root.temp.lore run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert -1 from storage nihility:storage root.temp.lore
kill @s