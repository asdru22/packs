data modify storage smithed.crafter:input flags append value "consume_tools"
item replace block ~ ~ ~ container.16 with stone
data modify block ~ ~ ~ Items[{Slot:16b}].id set from storage smithed.crafter:input recipe[{item_tag:["#nihility:enchantable"]}].id
data modify block ~ ~ ~ Items[{Slot:16b}].tag set from storage smithed.crafter:input recipe[{item_tag:["#nihility:enchantable"]}].tag
summon item ~ ~ ~ {Item:{id:"minecraft:blackstone",Count:1b,tag:{nihility:{temp:1b}}}}
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{nihility:{temp:1b}}}}] run function nihility:recipes/enchant/change_name_color

execute store result score ench_count nihility.data run data get storage nihility:storage root.temp.ench.valid
execute if score ench_count nihility.data matches 10.. run function nihility:recipes/enchant/unstable
data modify block ~ ~ ~ Items[{Slot:16b}].tag.nihility.Enchantments set from storage nihility:storage root.temp.ench.valid