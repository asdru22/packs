data modify entity @s Item.id set from storage nihility:storage root.temp.item.id
data modify entity @s CustomName set from storage nihility:storage root.temp.item.tag.display.Name

data remove block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore[-1]
item modify block ~ ~ ~ container.16 nihility:disenchant

kill @s