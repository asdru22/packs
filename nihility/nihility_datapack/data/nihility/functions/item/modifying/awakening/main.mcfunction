item replace block ~ ~ ~ container.0 with stone
data modify storage nihility:storage root.temp.item.tag.HideFlags set value 126
data modify storage nihility:storage root.temp.lore set value []

function nihility:item/modifying/awakening/material
data modify storage nihility:storage root.temp.lore insert -1 value '""'
function nihility:item/modifying/awakening/stats/main

execute if data storage nihility:storage root.temp.item.tag.nihility.Ability[] run function nihility:item/modifying/awakening/ability

execute if data storage nihility:storage root.temp.item.tag.nihility.Enchantments[] run function nihility:item/modifying/awakening/enchantments

data modify storage nihility:storage root.temp.lore insert -1 value '""'
data modify storage nihility:storage root.temp.lore insert -1 value '{"translate": "pack.nihility","color": "#007069","italic": true}'

data modify storage nihility:storage root.temp.item.tag.display.Lore set from storage nihility:storage root.temp.lore
data modify block ~ ~ ~ Items[0] set from storage nihility:storage root.temp.item