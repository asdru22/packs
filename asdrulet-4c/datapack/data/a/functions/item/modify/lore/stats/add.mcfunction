$execute if data storage a:data root.temp.lore.categories{$(category):false} run data modify storage a:data root.temp.lore.array insert -1 value '""'
$data modify storage a:data root.temp.lore.categories.$(category) set value true

$data modify storage a:data root.temp.lore.array insert -1 value '{"italic": false, "color": "gray", "translate": "item.stat.$(stat)", "with": [{"text": "$(amount)", "color": "$(color)"}]}' 