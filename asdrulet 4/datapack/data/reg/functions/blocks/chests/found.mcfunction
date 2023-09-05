execute store result storage asd:data root.temp.loot.id int 1 run scoreboard players get @s asd.id
data modify storage asd:data root.temp.loot.tag.asd.ids append from storage asd:data root.temp.loot.id
function reg:blocks/chests/loot
data modify storage asd:data root.temp.item set from block ~ ~ ~ Items[1]
execute store result score count asd.d run data get storage asd:data root.temp.item.Count
execute if score count asd.d matches 1 run item modify block ~ ~ ~ container.1 reg:item_display
execute if score count asd.d matches 2.. run item modify block ~ ~ ~ container.1 reg:item_display_count

data modify storage asd:data root.temp.display set from block ~ ~ ~ Items[1].tag.display.Name
execute align xyz positioned ~.5 ~ ~.5 run function reg:blocks/chests/item