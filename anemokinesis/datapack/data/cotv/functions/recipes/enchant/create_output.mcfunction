data modify storage smithed:crafter flags append value "consume_tools"
item replace block ~ ~ ~ container.16 with stone
data modify block ~ ~ ~ Items[{Slot:16b}].id set from storage smithed:crafter root.temp.shapeless_crafting_input[{item_tag:["#cotv:enchantable"]}].id
data modify block ~ ~ ~ Items[{Slot:16b}].tag set from storage smithed:crafter root.temp.shapeless_crafting_input[{item_tag:["#cotv:enchantable"]}].tag
summon item ~ ~ ~ {Item:{id:"minecraft:blackstone",Count:1b,tag:{cotv:{temp:1b}}}}
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{cotv:{temp:1b}}}}] run function cotv:recipes/enchant/change_name_color


data modify block ~ ~ ~ Items[{Slot:16b}].tag.cotv.Enchantments set from storage cotv:storage root.temp.ench.valid