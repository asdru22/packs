data modify storage smithed.crafter:input flags append value "consume_tools"

item replace block ~ ~ ~ container.16 with stone

data modify storage tfp:storage root.temp.item set from storage smithed.crafter:input recipe[{item_tag:["#tfp:has_durability"]}]
data modify storage tfp:storage root.temp.item.tag.Unbreakable set value 1b

data modify block ~ ~ ~ Items[{Slot:16b}].id set from storage tfp:storage root.temp.item.id
data modify block ~ ~ ~ Items[{Slot:16b}].tag set from storage tfp:storage root.temp.item.tag