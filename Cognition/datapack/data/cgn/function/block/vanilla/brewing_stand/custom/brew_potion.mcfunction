data modify storage cgn:storage root.temp.item.components."minecraft:lore" set value []

execute if data storage cgn:storage root.temp.ingredient.components{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'} if data storage cgn:storage root.temp.item.components."minecraft:potion_contents"{potion:"minecraft:awkward"} run function cgn:block/vanilla/brewing_stand/custom/brew/surge

data modify storage cgn:storage root.temp.item.components."minecraft:lore" insert -1 value '""'
data modify storage cgn:storage root.temp.item.components."minecraft:lore" insert -1 value '{"translate": "pack.cgn","color": "#653AA0","italic": false}'
data modify storage cgn:storage root.temp.item.components."minecraft:tooltip_style" set value "cgn:default"
